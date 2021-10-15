import logo from "./logo.svg";
import "./App.css";
import Home from "./Components/Home";
import routes from "./Common/Router/routes.js";
import { BrowserRouter as Router, Switch, Route, Link } from "react-router-dom";
import Header from "./Components/Header";
import Footer from "./Components/Footer";
import React from "react";

class App extends React.Component {
  render() {
    return (
      <Router>
        <div>
          <Header></Header>
          <div className="">{this.showContentMenus(routes)}</div>
          <Footer></Footer>
        </div>
      </Router>
    );
  }

  showContentMenus = (routes) => {
    console.log(routes.length);
    var result = null;
    if (routes.length) {
      result = routes.map((value, index) => {
        return (
          <Route
            key={index}
            path={value.path}
            exact={value.exact}
            component={value.main}
          ></Route>
        );
      });
    }
    return <Switch>{result}</Switch>;
  };
}

export default App;
