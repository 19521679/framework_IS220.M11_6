import React, { Component } from "react";
import "./style.css";
import _ from "lodash";

function importAll(r) {
  return r.keys().map(r);
}

const images = importAll(
  require.context("../../Asset/apple/iphone13", false, /\.(png|jpe?g|svg)$/)
);

const myImage = (name) => {
  let img = null;
  images.map((data) => {
    if (data.default.includes(name)) img = data.default;
    console.log("anhso:" + data.default);
  });

  return img;
};

const total = 6;
export default class index extends Component {
  state = { slideIndex: 0 };
  nextSlides = () => {
    var n = this.state.slideIndex + 1;
    if (n == total) n = 0;
    this.setState({ slideIndex: n });
  };
  preSlides = () => {
    var n = this.state.slideIndex - 1;
    if (n == -1) n = total - 1;
    this.setState({ slideIndex: n });
  };
  click = (n) => {
    this.setState({ slideIndex: n });
  };
  render() {
    return (
      <div className="box">
        {function () {
          console.log("index=" + this.state.slideIndex);

          var result = [];
          for (var i = 0; i < total; i++) {
            result.push(
              <div
                className={
                  i === this.state.slideIndex
                    ? "product-img fade show"
                    : "product-img fade hidden"
                }
              >
                <div className="numbertext">
                  {i}/{total}
                </div>
                <img className="main-img " src={myImage(i.toString())} />

                <a className="prev" onClick={this.preSlides}>
                  ❮
                </a>
                <a className="next" onClick={this.nextSlides}>
                  ❯
                </a>
              </div>
            );
          }
          return result;
        }.bind(this)()}

        {/* Image text */}
        <div className="caption-box">
          <p id="caption" />
        </div>
        {/* The dots/circles */}
        <div style={{ textAlign: "center" }}>
          {function () {
            // body
            var result = [];
            for (var i = 0; i < total; i++) {
              if (i == this.state.slideIndex) {
                result.push(<span className="dot dotactive" />);
              } else result.push(<span className="dot" />);
            }

            return result;
          }.bind(this)()}
        </div>
        {/* Thumbnail images */}
        <div className="row">
          {function () {
            var result = [];
            for (var i = 0; i < total; i++) {
              if (i == this.state.slideIndex) {
                result.push(
                  <div className="mini-image">
                    <img
                      className="image-format mini-active"
                      src={myImage(i.toString())}
                      style={{ width: "100%" }}
                      alt=""
                    />
                  </div>
                );
              } else
                result.push(
                  <div className="mini-image">
                    <img
                      className="image-format demo cursor mini-inactive"
                      src={myImage(i.toString())}
                      style={{ width: "100%" }}
                      alt=""
                      onClick={this.click.bind(this, i)}
                    />
                  </div>
                );
            }
            return result;
          }.bind(this)()}
          {/* Thumbnail images */}
        </div>
        {/* <div className="row">
            {_.times(3, (i) => (
              <div className="mini-image">
                <img
                  className="image-format demo cursor"
                  src={myImage(i)}
                  style={{ width: "100%" }}
                  alt=""
                />
              </div>
            ))}
          </div> */}
      </div>
    );
  }
}
