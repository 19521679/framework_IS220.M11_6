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
    exact: false,
    list: ["Iphone", "Samsung", "Vivo", "Oppo", "Xiaomi"],
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
        console.log("chieudai:" + list.length);

        if (list.length != 0) {
          var dropdown = null;
          return (
            <li class="dropdown show" className={active}>
                <Link
                  class="nav-link scrollto dropdown-toggle"
                  to={to}
                  role="button"
                  id="dropdownMenuLink"
                  data-toggle="dropdown"
                  aria-haspopup="true"
                  aria-expanded="false"
                >
                  {lable}
                </Link>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                  
                    {
                      (dropdown = list.map((value, key) => {
                        return (
                          <a class="dropdown-item" href="#">
                            {value} 
                            {console.log(value)}</a>
                        );
                      }))
                    }
              </div>
            </li>
          );
        } else {
          return (
            // <li className={active}>
            //   <Link to={to}>{lable}</Link>
            // </li>
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

export default class Header extends Component {
  render() {
    return (
      <header id="header" className="fixed-top">
        <div className="container d-flex align-items-center justify-content-between">
          <h1 className="logo">
            <a href="index.html">Lavender</a>
          </h1>
          {/* Uncomment below if you prefer to use an image logo */}
          {/* <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>*/}
          <nav id="navbar" className="navbar">
            <ul>
              {this.showMenu(menus)}
              <li>
                <Link className="getstarted scrollto" to="/cart">
                  Giỏ hàng
                </Link>
              </li>
              <li>
                <Link className="getstarted scrollto" to = "/lmember">
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

  showMenu = (temps) => {
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
}
