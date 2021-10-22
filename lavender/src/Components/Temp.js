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
    list: [],
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

        if (list != null) {
          var dropdown = null;
          return (
            <li className="dropdown">
              <a href="#">
                <span>{lable}</span> <i className="bi bi-chevron-down" />
              </a>
              <ul>
                {list.map((value, key) => {
                  return (
                    <li>
                      <a href="#">{value}</a>
                    </li>
                  );
                })}
              </ul>
            </li>
          );
        } else {
          return (
            // <li className={active}>
            //   <Link to={to}>{lable}</Link>
            // </li>
             <li className={active}>
                <Link className="nav-link scrollto active" to={to}>{lable}{}
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
              <li>
                <a className="nav-link scrollto active" href="#home">
                  Trang chủ
                </a>
              </li>
              <li className="dropdown">
                <a href="#">
                  <span>Điện thoại</span> <i className="bi bi-chevron-down" />
                </a>
                <ul>
                  <li>
                    <a href="#">Drop Down 1</a>
                  </li>
                  <li className="dropdown">
                    <a href="#">
                      <span>Deep Drop Down</span>{" "}
                      <i className="bi bi-chevron-right" />
                    </a>
                    <ul>
                      <li>
                        <a href="#">Deep Drop Down 1</a>
                      </li>
                      <li>
                        <a href="#">Deep Drop Down 2</a>
                      </li>
                      <li>
                        <a href="#">Deep Drop Down 3</a>
                      </li>
                      <li>
                        <a href="#">Deep Drop Down 4</a>
                      </li>
                      <li>
                        <a href="#">Deep Drop Down 5</a>
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a href="#">Drop Down 2</a>
                  </li>
                  <li>
                    <a href="#">Drop Down 3</a>
                  </li>
                  <li>
                    <a href="#">Drop Down 4</a>
                  </li>
                </ul>
              </li>
              <li className="dropdown">
                <a href="#">
                  <span>Máy tính</span> <i className="bi bi-chevron-down" />
                </a>
                <ul>
                  <li>
                    <a href="#">Drop Down 1</a>
                  </li>
                  <li className="dropdown">
                    <a href="#">
                      <span>Deep Drop Down</span>{" "}
                      <i className="bi bi-chevron-right" />
                    </a>
                    <ul>
                      <li>
                        <a href="#">Deep Drop Down 1</a>
                      </li>
                      <li>
                        <a href="#">Deep Drop Down 2</a>
                      </li>
                      <li>
                        <a href="#">Deep Drop Down 3</a>
                      </li>
                      <li>
                        <a href="#">Deep Drop Down 4</a>
                      </li>
                      <li>
                        <a href="#">Deep Drop Down 5</a>
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a href="#">Drop Down 2</a>
                  </li>
                  <li>
                    <a href="#">Drop Down 3</a>
                  </li>
                  <li>
                    <a href="#">Drop Down 4</a>
                  </li>
                </ul>
              </li>
              <li>
                <a className="nav-link scrollto" href="#exdevice">
                  Phụ kiện
                </a>
              </li>
              <li>
                <a className="nav-link scrollto" href="#services">
                  Dịch vụ
                </a>
              </li>

              <li>
                <a className="getstarted scrollto" href="#">
                  Giỏ hàng
                </a>
              </li>
              <li>
                <a className="getstarted scrollto" href="#">
                  LMember
                </a>
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
