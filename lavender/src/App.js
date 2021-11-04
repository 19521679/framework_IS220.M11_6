import "./App.css";
import routes from "./Common/Router/routes.js";
import { ToastContainer } from "react-toastify";
import {
  BrowserRouter as Router,
  Switch,
  Route,
} from "react-router-dom";
import Header from "./Components/Header";
import Footer from "./Components/Footer";
import React from "react";
import { Provider } from "react-redux";
import configureStore from "./Components/redux/configureStore";

const store = configureStore();
class App extends React.Component {
  render() {
    return (
      <Provider store={store}>
        <ToastContainer />
        <Router>
          <div>
            <Header></Header>
            <div className="">{this.showContentMenus(routes)}</div>
            <Footer></Footer>
          </div>
        </Router>
      </Provider>
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
