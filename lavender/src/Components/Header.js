import React, { Component } from "react";
import "./Home.css";
import { BrowserRouter as Router, Switch, Route, Link } from "react-router-dom";

const menus = [
  {
    name: "Trang chủ",
    to: "/",
    exact: true,
    list: [],
  },
  {
    name: "Điện thoại",
    to: "/mobiles",
    exact: true,
    list: [
      {
        name: "Iphone",
        to: "/iphone",
        exact: false,
        list: [],
      },
      {
        name: "Samsung",
        to: "/samsung",
        exact: false,
        list: [],
      },
      {
        name: "Oppo",
        to: "/oppo",
        exact: false,
        list: [],
      },
      {
        name: "Vivo",
        to: "/vivo",
        exact: false,
        list: [],
      },
      {
        name: "Xiaomi",
        to: "/xiaomi",
        exact: false,
        list: [],
      },
    ],
  },
  {
    name: "Máy tính",
    to: "/computers",
    exact: false,
    list: [],
  },
  {
    name: "Phụ kiện",
    to: "/exdevices",
    exact: false,
    list: [],
  },
  {
    name: "Dịch vụ",
    to: "/services",
    exact: false,
    list: [],
  },
];

var MenuLink = ({ lable, to, activeOnlyWhenExact, list }) => {
  return (
    <Route
      path={to}
      exact={activeOnlyWhenExact}
      children={({ match }) => {
        var active = match ? "active" : "";

        if (list.length != 0) {
          return showItemDown(lable, to, activeOnlyWhenExact, list);
        } else {
          return (
            <li className={active}>
              <Link className="nav-link scrollto" to={to}>
                {lable}
              </Link>
            </li>
          );
        }
      }}
    ></Route>
  );
};

var ItemLink = ({ lable, to, activeOnlyWhenExact, list }) => {
  return (
    <Route
      path={to}
      exact={activeOnlyWhenExact}
      children={({ match }) => {
        var active = match ? "active" : "";

        if (list.length != 0) {
          return showItemRight(list);
        } else {
          return (
            <li className={active}>
              <Link className="nav-link scrollto" to={to}>
                {lable}
              </Link>
            </li>
          );
        }
      }}
    ></Route>
  );
};

var showItemDown = (lable, to, activeOnlyWhenExact, list ) => {
  var result = null;
  result = (
    <li className="dropdown" >
      <Link className="" to={to}>
        <span>{lable}</span> <i className="bi bi-chevron-down" />
      </Link>
      <ul>
        {list.map((value, key) => {
          return (
            <ItemLink
              key={key}
              lable={value.name}
              to={to+value.to}
              activeOnlyWhenExact={value.exact}
              list={value.list}
            ></ItemLink>
          );
        })}
      </ul>
    </li>
  );
  return result;
};

var showItemRight = (lable, to, activeOnlyWhenExact, list) => {
  var result = null;
  result = (
    <li className="dropdown">
      <Link className="" to={to}>
        <span>{lable}</span> <i className="bi bi-chevron-right" />
      </Link>
      <ul>
        {list.map((value, key) => {
          return (
            <ItemLink
              key={key}
              lable={value.name}
              to={to+value.to}
              activeOnlyWhenExact={value.exact}
              list={value.list}
            ></ItemLink>
          );
        })}
      </ul>
    </li>
  );
  return result;
};

var showMenu = (temps) => {
  var result = null;
  result = temps.map((value, key) => {
    return (
      <MenuLink
        key={key}
        lable={value.name}
        to={value.to}
        activeOnlyWhenExact={value.exact}
        list={value.list}
      ></MenuLink>
    );
  });
  return result;
};

export default class Header extends Component {
  render() {
    return (
      <header id="header" className="fixed-top">
        <div className="container d-flex align-items-center justify-content-between">
          <h1 className="logo">
            <Link to="/">Lavender</Link>
          </h1>
          {/* Uncomment below if you prefer to use an image logo */}
          {/* <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>*/}
          <nav id="navbar" className="navbar">
            <ul>
              {showMenu(menus)}
              <li>
                <Link className="getstarted scrollto" to="/cart">
                  Giỏ hàng
                </Link>
              </li>
              <li>
                <Link className="getstarted scrollto" to="/lmember">
                  LMember
                </Link>
              </li>
            </ul>
            <i className="bi bi-list mobile-nav-toggle" />
          </nav>
          {/* .navbar */}
        </div>
      </header>
    );
  }
}
