import "./App.css";
import routes from "./Common/Router/routes.js";
import { ToastContainer } from "react-toastify";
import {
  Switch,
  Route,
  withRouter,
} from "react-router-dom";
import Header from "./Components/Header";
import Footer from "./Components/Footer";
import React from "react";
import { Provider } from "react-redux";
import configureStore from "./Components/redux/configureStore";
import Admin from "./Components/Admin";

const store = configureStore();
class App extends React.Component {
  render() {
    return (
        <Provider store={store}>
          <ToastContainer />

          {this.props.location.pathname !== "/admin" ? <Header /> : null}
          {this.showContentMenus(routes)}
          {this.props.location.pathname !== "/admin" ? <Footer /> : null}
        </Provider>
    );
  }

  showContentMenus = (routes) => {
    var result = null;
    if (routes.length) {
      result = routes.map((value, key) => {
        let keyRan = key;
        if (value.path === "/cart") keyRan = Date.now();
        if (value.path === "admin") return;
        return (
          <Route
            path={value.path}
            exact={value.exact}
            component={value.main}
            keyProp={key}
            key={keyRan}
          ></Route>
        );
      });
    }
    return <Switch>{result}</Switch>;
  };
}

export default withRouter(App);
