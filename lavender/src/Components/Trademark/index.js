import React, { Component } from "react";
import { Route, Link } from "react-router-dom";
import "./style.css";
import * as trademarkApi from "../apis/trademark";

function importAll(r) {
  return r.keys().map(r);
}

const images = importAll(
  require.context("../../Asset/trademark", false, /\.(png|jpe?g|svg)$/)
);

const myImage = (name) => {
  let img = null;
  images.map((data) => {
    if (data.default.includes(name)) img = data.default;
    return data.default;
  });
  return img;
};

export default class index extends Component {
  state = {trademark:[]}
   componentDidMount() {
     let trademark=[];
     trademarkApi.trademark(this.props.type)
    .then((success) => {
      if (success.status===200) {
        let temp = [success.data.value.$values];
        for (var i=0; i<temp.length; i++) {
          trademark.push(temp[i].tenthuonghieu);
        }
        this.setState({trademark:trademark})
      }
    })
    .catch((error) => {
      console.error(error);
      return;
    });
  }
   mapTrademark = () => {
    let result = null;

    if (this.state.trademark.length === 0) return
      result = this.state.trademark.map((value, index) => {
        return (
          <Link to={"/" + this.props.type + "/" + value} key={index} className="trademark-item">
            <img
              className="trademark-icon loaded"
              // data-ll-status="loaded"
              src={myImage(value)}
              alt=""
            ></img>
          </Link>
        );
      });
    
    return <Route>{result}</Route>;
  };
   render() {
    return (
      <div className="trademark-list">
        {this.mapTrademark()}
      </div>
    );
  }
}
