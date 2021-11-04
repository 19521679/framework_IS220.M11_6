import React, { Component } from "react";
import "./style.css";
import SlideShow from "../SlideShow";

export default class index extends Component {
  click = () => {
    console.log("mobileclick");
  };
  render() {
    return (
      <section>
        <div className="container">
          <div className="detail-product__box-name">
            <div className="cps-container">
              <div className="box-name__box-product-name">
                <h1>iPhone 13 Pro Max | Chính hãng VN/A </h1>
              </div>
              <div className="box-name__box-raiting">
                <i className="fas fa-star checked" />
                <i className="fas fa-star checked" />
                <i className="fas fa-star checked" />
                <i className="fas fa-star checked" />
                <i className="fas fa-star checked" />
                &nbsp;14 đánh giá
              </div>
              <div className="box-info__box-social ">
                <div
                  className="fb-like fb_iframe_widget"
                  data-href="https://cellphones.com.vn/iphone-13-pro-max.html"
                  data-layout="button_count"
                  data-action="like"
                  data-show-faces="false"
                  data-share="true"
                  fb-xfbml-state="rendered"
                  fb-iframe-plugin-query="action=like&app_id=112980886043945&container_width=0&href=https%3A%2F%2Fcellphones.com.vn%2Fiphone-13-pro-max.html&layout=button_count&locale=vi_VN&sdk=joey&share=true&show_faces=false"
                >
                  <span
                    style={{
                      verticalAlign: "bottom",
                      width: "150px",
                      height: "28px",
                    }}
                  >
                    <iframe
                      name="f21f31bf5b23fc8"
                      width="1000px"
                      height="1000px"
                      data-testid="fb:like Facebook Social Plugin"
                      title="fb:like Facebook Social Plugin"
                      frameBorder={0}
                      allowTransparency="true"
                      allowFullScreen="true"
                      scrolling="no"
                      allow="encrypted-media"
                      src={
                        "https://www.facebook.com/v2.5/plugins/like.php?action=like&app_id=112980886043945&channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Df2b66aa4f998cd%26domain%3Dcellphones.com.vn%26is_canvas%3Dfalse%26origin%3Dhttps%253A%252F%252Fcellphones.com.vn%252Ff3850371964bd8%26relation%3Dparent.parent&container_width=0&href=https%3A%2F%2Fcellphones.com.vn%2Fiphone-13-pro-max.html&layout=button_count&locale=vi_VN&sdk=joey&share=true&show_faces=false"
                      }
                      style={{
                        border: "none",
                        visibility: "visible",
                        width: "150px",
                        height: "28px",
                      }}
                      className
                    />
                  </span>
                </div>
              </div>
            </div>
          </div>

          <div className="container">
            <div className="row">
              <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                <SlideShow></SlideShow>
              </div>
              <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                <div id="price" className="price mt-5">
                  36.490.000₫
                </div>
                <div className="box-linked">
                  <div className="list-linked">
                    <a
                      href="https://cellphones.com.vn/iphone-13-pro-max-1tb.html"
                      className="item-linked linked-1 box-shadow"
                    >
                      <strong>1TB</strong>
                      <span>47.500.000&nbsp;₫</span>
                    </a>
                    <a
                      href="https://cellphones.com.vn/iphone-13-pro-max-512gb.html"
                      className="item-linked linked-2 box-shadow"
                    >
                      <strong>512GB</strong>
                      <span>42.490.000&nbsp;₫</span>
                    </a>
                    <a
                      href="https://cellphones.com.vn/iphone-13-pro-max-256gb.html"
                      className="item-linked linked-3 active box-shadow"
                    >
                      <strong>256GB</strong>
                      <span>36.990.000&nbsp;₫</span>
                    </a>
                    <a
                      href="https://cellphones.com.vn/iphone-13-pro-max.html"
                      className="item-linked linked-4 box-shadow"
                    >
                      <strong>128GB</strong>
                      <span>33.990.000&nbsp;₫</span>
                    </a>
                  </div>
                </div>

                <div className="box-product-option">
                  <div className="box-title">
                    <p className="box-title__title">
                      Chọn màu để xem giá và chi nhánh có hàng
                    </p>
                  </div>
                  <div className="box-content">
                    <select
                      name="super_attribute[80]"
                      id="attribute80"
                      className="required-entry super-attribute-select no-display swatch-select box-shadow"
                    >
                      <option value>Choose an Option...</option>
                      <option value={161} price={36990000} data-label="bạc">
                        Bạc
                      </option>
                      <option value={157} price={36990000} data-label="vàng">
                        Vàng
                      </option>
                      <option value={160} price={36990000} data-label="xám">
                        Xám
                      </option>
                      <option value={1075} price={36990000} data-label="xanh">
                        Xanh
                      </option>
                    </select>
                    <ul id="configurable_swatch_color" className="list-colors">
                      <li
                        id="option161"
                        className="item-color option-b-c  wide-swatch swatch selected"
                        data-id={36558}
                        data-stock={1}
                      >
                        <a
                          href="javascript:void(0)"
                          name="b-c"
                          id="swatch161"
                          className="swatch-link swatch-link-80"
                          title="Bạc"
                        >
                          <img
                            className="cpslazy loaded"
                            data-src="https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone_13-_pro-3_6.jpg"
                            alt="Bạc"
                            title="Bạc"
                            data-ll-status="loaded"
                            src="https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone_13-_pro-3_6.jpg"
                          />
                          <p>
                            <strong>Bạc</strong>
                            <span>36.990.000&nbsp;₫</span>
                          </p>
                        </a>
                      </li>
                      <li
                        id="option157"
                        className="item-color option-v-ng  wide-swatch swatch"
                        data-id={36560}
                        data-stock={1}
                      >
                        <a
                          href="javascript:void(0)"
                          name="v-ng"
                          id="swatch157"
                          className="swatch-link swatch-link-80"
                          title="Vàng"
                        >
                          <img
                            className="cpslazy loaded"
                            data-src="https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone_13-_pro-2_1_5.jpg"
                            alt="Vàng"
                            title="Vàng"
                            data-ll-status="loaded"
                            src="https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone_13-_pro-2_1_5.jpg"
                          />
                          <p>
                            <strong>Vàng</strong>
                            <span>36.990.000&nbsp;₫</span>
                          </p>
                        </a>
                      </li>
                      <li
                        id="option160"
                        className="item-color option-x-m  wide-swatch swatch"
                        data-id={36559}
                        data-stock={1}
                      >
                        <a
                          href="javascript:void(0)"
                          name="x-m"
                          id="swatch160"
                          className="swatch-link swatch-link-80"
                          title="Xám"
                        >
                          <img
                            className="cpslazy loaded"
                            data-src="https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone_13-_pro-4_6.jpg"
                            alt="Xám"
                            title="Xám"
                            data-ll-status="loaded"
                            src="https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone_13-_pro-4_6.jpg"
                          />
                          <p>
                            <strong>Xám</strong>
                            <span>36.990.000&nbsp;₫</span>
                          </p>
                        </a>
                      </li>
                      <li id="option1075" className="item-color disable">
                        <a
                          href="javascript:void(0)"
                          name="xanh"
                          id="swatch1075"
                          className="swatch-link swatch-link-80"
                          title="Xanh"
                        >
                          <img
                            className="cpslazy loaded"
                            data-src="https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone_13-_pro-5_6.jpg"
                            alt="Xanh"
                            title="Xanh"
                            data-ll-status="loaded"
                            src="https://cdn.cellphones.com.vn/media/catalog/product/cache/7/thumbnail/9df78eab33525d08d6e5fb8d27136e95/i/p/iphone_13-_pro-5_6.jpg"
                          />
                          <p>
                            <strong>Xanh</strong>
                            <span>36.990.000&nbsp;₫</span>
                          </p>
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>

                <div className="box-promotion">
                  <div className="box-title">
                    <p className="box-title__title">
                      <svg
                        xmlns="http://www.w3.org/2000/svg"
                        width="13.125"
                        height={15}
                        viewBox="0 0 13.125 15"
                      >
                        <path
                          id="gift"
                          d="M14.656,4.693H2.469A.468.468,0,0,0,2,5.161V9.38a.468.468,0,0,0,.469.469h.469v4.687A.468.468,0,0,0,3.406,15H13.719a.468.468,0,0,0,.469-.469V9.849h.469a.468.468,0,0,0,.469-.469V5.161A.468.468,0,0,0,14.656,4.693ZM7.625,13.6a.468.468,0,0,1-.469.469H4.344a.468.468,0,0,1-.469-.469V9.849a.468.468,0,0,1,.469-.469H7.156a.468.468,0,0,1,.469.469Zm0-5.625a.468.468,0,0,1-.469.469H3.406a.468.468,0,0,1-.469-.469V6.1a.468.468,0,0,1,.469-.469h3.75a.468.468,0,0,1,.469.469ZM13.25,13.6a.468.468,0,0,1-.469.469H9.969A.468.468,0,0,1,9.5,13.6V9.849a.468.468,0,0,1,.469-.469h2.812a.468.468,0,0,1,.469.469Zm.937-5.625a.468.468,0,0,1-.469.469H9.969A.468.468,0,0,1,9.5,7.974V6.1a.468.468,0,0,1,.469-.469h3.75a.468.468,0,0,1,.469.469ZM6.481,4.692h4.312A3.266,3.266,0,0,0,12.314,2.72a1.5,1.5,0,0,0-.645-1.383,1.64,1.64,0,0,0-1.013-.4c-1.07,0-1.675,1.312-2,2.483C8.264,1.926,7.509.005,6.213.005A1.7,1.7,0,0,0,5.092.492a1.886,1.886,0,0,0-.725,1.747A4.185,4.185,0,0,0,6.481,4.692Zm4.176-2.631a.686.686,0,0,1,.386.18c.242.19.228.308.225.347-.045.41-.814,1.055-1.711,1.587.264-1.135.7-2.114,1.1-2.114Zm-4.891-.7a.782.782,0,0,1,.447-.228c.58,0,1.177,1.523,1.525,3-1.1-.584-2.229-1.412-2.33-2.077C5.394,1.965,5.357,1.719,5.766,1.357Z"
                          transform="translate(-2 -0.005)"
                          fill="#d70018"
                        />
                      </svg>
                      &nbsp;Khuyến Mãi
                    </p>
                  </div>
                  <div className="box-content">
                    <ul className="list-promotions">
                      <li className="item-promotion general-promotion">
                        <a href="https://cellphones.com.vn/danh-sach-khuyen-mai#gift">
                          Giảm 1 triệu khi thanh toán qua ví Moca, thẻ tín dụng
                          ACB, BIDV, Sacombank, mPOS, Shinhan, Standard Charter
                          (số lượng có hạn)&nbsp;
                          <span className="color-red">(xem chi tiết)</span>
                        </a>
                      </li>
                      <li className="item-promotion general-promotion">
                        <a href="https://cellphones.com.vn/thu-cu-doi-moi">
                          Thu cũ lên đời - Trợ giá 1 triệu&nbsp;
                          <span className="color-red">(xem chi tiết)</span>
                        </a>
                      </li>
                    </ul>
                    <div className="cps-additional-note">
                      <p>
                        <a data-toggle="modal" data-target="#myModal">
                          <strong className="color-red">
                            <img
                              src="/media/icon/icon_fire.png"
                              style={{ width: "20px" }}
                            />
                            &nbsp;DANH SÁCH CỬA HÀNG ĐÃ CÓ HÀNG TRẢI NGHIỆM
                          </strong>
                        </a>
                      </p>
                      <div className="modal fade" id="myModal">
                        <div className="modal-dialog">
                          <div className="modal-content">
                            <div className="modal-header">
                              <button
                                className="close"
                                type="button"
                                data-dismiss="modal"
                              >
                                ×
                              </button>
                              <ul>
                                <li>18 Võ Văn Ngân, Quận Thủ Đức</li>
                                <li>59 Quang Trung, Quận Gò Vấp</li>
                                <li>359 Cộng Hòa, Quận Tân Bình</li>
                                <li>956 Âu Cơ, P.14, Quận Tân Bình</li>
                                <li>
                                  536 Xô Viết Nghệ Tĩnh, P. 25, Q. Bình Thạnh
                                </li>
                                <li>288 đường 3/2, Quận 10</li>
                                <li>55B Trần Quang Khải, Quận 1</li>
                                <li>134 Nguyễn Thái Học, Quận 1</li>
                              </ul>
                            </div>
                            <div className="modal-footer">
                              <button
                                className="btn btn-danger"
                                type="button"
                                data-dismiss="modal"
                              >
                                Đóng
                              </button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>{" "}
                  </div>
                </div>

                <div className="box-action-button">
                  <a className="action-button button-red" onclick="addToCart()">
                    <strong>MUA NGAY</strong>
                    <span>(Giao tận nơi hoặc lấy tại cửa hàng)</span>
                  </a>
                  <div className="group-button ">
                    <a
                      href="/tragop?p=iphone-13-pro-max-256gb&m=company"
                      className="action-button button-blue"
                      style={{}}
                    >
                      <strong>TRẢ GÓP 0%</strong>
                      <span>(Xét duyệt qua điện thoại)</span>
                    </a>
                    <a className="action-button button-blue" onclick="tragop()">
                      <strong>TRẢ GÓP QUA THẺ</strong>
                      <span>(Visa, Master Card, JCB)</span>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    );
  }
}
