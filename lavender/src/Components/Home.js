import React, { Component } from "react";
import "./Home.css";
import Carousel from "react-bootstrap/Carousel";
import ProductItem from "./Product/ProductItem.js";

export default class Home extends Component {
  click = () => {
    console.log("homeclick");
  };
  render() {
    return (
      <section className="container">
        <div className="row promotion1">
          <div className="col-xs-8 col-sm-8 col-md-8 col-lg-8 carousel-title">
            <Carousel variant="light">
              <Carousel.Item>
                <img
                  className="d-block"
                  src="https://cdn.tgdd.vn/2021/11/banner/830-300-830x300-1.png"
                  alt="First slide"
                />
                <Carousel.Caption></Carousel.Caption>
              </Carousel.Item>
              <Carousel.Item>
                <img
                  className="d-block"
                  src="https://cdn.tgdd.vn/2021/10/banner/830-300-830x300-26.png"
                  alt="Second slide"
                />
                <Carousel.Caption></Carousel.Caption>
              </Carousel.Item>
              <Carousel.Item>
                <img
                  className="d-block"
                  src="https://cdn.tgdd.vn/2021/11/banner/830-300-830x300.png"
                  alt="Third slide"
                />
                <Carousel.Caption></Carousel.Caption>
              </Carousel.Item>
            </Carousel>
          </div>

          <div className="col-xs-4 col-sm-4 col-md-4 col-lg-4">
            <div className="promotion-row promotion2">
              <img
                className="d-block promotion-img box-shadow"
                src="https://cdn.tgdd.vn/2021/11/banner/laptopdesk(3)-340x340.jpg"
                alt="Third slide"
              />
              <img
                className="d-block promotion-img box-shadow"
                src="https://cdn.tgdd.vn/2021/11/banner/laptopdesk(1)-340x340-1.jpg"
                alt="Third slide"
              />
            </div>
            <div className="promotion-row promotion3">
              <img
                className="d-block promotion-img box-shadow"
                src="https://cdn.tgdd.vn/2021/11/banner/laptopdesk-340x340.jpg"
                alt="Third slide"
              />
              <img
                className="d-block promotion-img box-shadow"
                src="https://cdn.tgdd.vn/2021/11/banner/die%CC%A3%CC%82nthoaidesk-340x340.jpg"
                alt="Third slide"
              />
            </div>
          </div>
        </div>

        {/* Điện thoại nổi bật */}

        <div className="row">
          <div className="box-title">
            <a
              href="https://cellphones.com.vn/mobile.html"
              className="box-title__title"
            >
              <h2>Điện thoại nổi bật nhất</h2>
            </a>
            <div className="box-related-tag">
              <div className="list-related-tag">
                <a
                  className="btn btn-default btn-sm"
                  href="https://cellphones.com.vn/mobile/apple.html"
                >
                  Apple
                </a>
                <a
                  className="btn btn-default btn-sm"
                  href="https://cellphones.com.vn/mobile/samsung.html"
                >
                  Samsung
                </a>
                <a
                  className="btn btn-default btn-sm"
                  href="https://cellphones.com.vn/mobile/xiaomi.html"
                >
                  Xiaomi
                </a>
                <a
                  className="btn btn-default btn-sm"
                  href="https://cellphones.com.vn/mobile/oppo.html"
                >
                  OPPO
                </a>
                <a
                  className="btn btn-default btn-sm"
                  href="https://cellphones.com.vn/mobile/realme.html"
                >
                  Realme
                </a>
                <a
                  className="btn btn-default btn-sm"
                  href="https://cellphones.com.vn/mobile/nokia.html"
                >
                  Nokia
                </a>
                <a
                  className="btn btn-default btn-sm"
                  href="https://cellphones.com.vn/mobile/vivo.html"
                >
                  Vivo
                </a>{" "}
                <a
                  href="https://cellphones.com.vn/mobile.html"
                  className="item-related-tag"
                >
                  Xem tất cả
                </a>
              </div>
            </div>
          </div>
        </div>

        {/* list-item */}

        <div id="highlight" className="highlight section-bg">
          <div className="container list-item " data-aos="fade-up">
            <div className="row row-item">
              <ProductItem></ProductItem>
              <ProductItem></ProductItem>
              <ProductItem></ProductItem>
              <ProductItem></ProductItem>
            </div>
            <div className="row row-item">
              <ProductItem></ProductItem>
              <ProductItem></ProductItem>
              <ProductItem></ProductItem>
              <ProductItem></ProductItem>
            </div>
          </div>
        </div>

        {/* Laptop nổi bật */}
        <div className="box-title">
          <a
            href="https://cellphones.com.vn/laptop.html"
            className="box-title__title"
          >
            <h2>Laptop</h2>
          </a>
          <div className="box-related-tag">
            <div className="list-related-tag">
              <a
                className="btn btn-default btn-sm"
                href="https://cellphones.com.vn/laptop/mac.html"
              >
                Mac
              </a>
              <a
                className="btn btn-default btn-sm"
                href="https://cellphones.com.vn/laptop/asus.html"
              >
                ASUS
              </a>
              <a
                className="btn btn-default btn-sm"
                href="https://cellphones.com.vn/laptop/hp.html"
              >
                HP
              </a>
              <a
                className="btn btn-default btn-sm"
                href="https://cellphones.com.vn/laptop/surface.html"
              >
                Microsoft Surface
              </a>
              <a
                className="btn btn-default btn-sm"
                href="https://cellphones.com.vn/laptop/msi.html"
              >
                MSI
              </a>
              <a
                className="btn btn-default btn-sm"
                href="https://cellphones.com.vn/laptop/dell.html"
              >
                Dell
              </a>{" "}
              <a
                href="https://cellphones.com.vn/laptop.html"
                className="item-related-tag"
              >
                Xem tất cả
              </a>
            </div>
          </div>
        </div>
        {/* list-item */}

        <div id="highlight" className="highlight section-bg">
          <div className="container list-item " data-aos="fade-up">
            <div className="row row-item">
              <ProductItem></ProductItem>
              <ProductItem></ProductItem>
              <ProductItem></ProductItem>
              <ProductItem></ProductItem>
            </div>
            <div className="row row-item">
              <ProductItem></ProductItem>
              <ProductItem></ProductItem>
              <ProductItem></ProductItem>
              <ProductItem></ProductItem>
            </div>
          </div>
        </div>
      </section>
    );
  }
}
