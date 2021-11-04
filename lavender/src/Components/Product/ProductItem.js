import React, { Component } from "react";
import "./ProductItem.css";

export default class ProductItem extends Component {
  render() {
    return (
      <div
        className="col-lg-3 col-md-4 d-flex align-items-stretch col-lg-2 product-item"
        data-aos="zoom-in"
        data-aos-delay={100}
      >
        <div className="icon-box iconbox-blue">
          <div className="box-item-sticker-percent">
            <p>Giảm 34%</p>
          </div>

          <div className="icon">
            <img src="https://www.w3schools.com/images/colorpicker.gif"></img>
            <i className="bx bxl-dribbble" />
          </div>
          <h4>
            <a>Lorem Ipsum</a>
          </h4>
          <p>Voluptatum deleniti atque corrupti quos dolores et quas</p>
          <div className="product-info">
            {" "}
            molestias excepturi asaasdasdasdasdasdasdasdasdasd
          </div>
        </div>
      </div>
    );
  }
}
