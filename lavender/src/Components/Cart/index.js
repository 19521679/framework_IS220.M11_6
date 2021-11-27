import React, { Component } from "react";
import "./style.css";
import Product from "./Product.js";
import { withRouter } from "react-router-dom";
import { connect } from "react-redux";
import PropTypes from "prop-types";
import * as cartApi from "../apis/cart";
import * as myToast from "../../Common/helper/toastHelper";
import * as detailCartApi from "../apis/detailCart";
import * as detailProductApi from "../apis/detailProduct";
import AddVoucherModal from "./AddVoucherModal";
class index extends Component {
  state = {
    cart: undefined,
    detailCarts: [],
    tongtien: 0,
    tongcong: 0,
    voucherModalIsOpen: false,
  };

  pushProduct() {
    let result = null;
    result = this.state.detailCarts.map((value, key) => {
      return (
        <Product
          detailCart={value}
          key={key}
          changeQuantity={this.changeQuantity.bind(this)}
          changeSelect={this.changeSelect.bind(this)}
        ></Product>
      );
    });
    return result;
  }

  async loadCart() {
    let cart = undefined;
    if (this.props.customer.makhachhang === undefined) {
      this.props.history.push("/login");
    }
    await cartApi
      .loadCart(this.props.customer.makhachhang)
      .then((success) => {
        if (success.status === 200) {
          cart = success.data.value.$values[0];
        }
      })
      .catch((error) => {
        console.error(error);
      });

    if (cart === undefined || cart.lenght === 0) {
      this.setState({ cart: {} });
      return;
    }
    let detailCarts = undefined;
    await detailCartApi
      .loadDetailCartByCartId(cart.magiohang)
      .then((success) => {
        if (success.status === 200) {
          if (success.data.value !== undefined)
            detailCarts = success.data.value.$values;
        }
      })
      .catch((error) => {
        console.error(error);
      });
    if (detailCarts === undefined) {
      this.setState({ detailCarts: [] });
      return;
    }

    var carttemp = [];
    for (var i = 0; i < detailCarts.length; i++) {
      var tien = 0;
      await detailProductApi
        .xemgiatheodungluongmausacmasanpham(
          detailCarts[i].masanpham,
          detailCarts[i].dungluong,
          detailCarts[i].mausac
        )
        .then((success) => {
          tien = success.data.value;
        })
        .catch((error) => {
          console.error(error);
        });
      var temp = { ...detailCarts[i], chon: false, tien: tien };
      carttemp.push(temp);
    }

    await this.setState({ cart: cart, detailCarts: carttemp });
  }

  async changeQuantity(masanpham, dungluong, mausac, quantity) {
    let detailCartsTemp = this.state.detailCarts;
    for (let i = 0; i < detailCartsTemp.length; i++) {
      if (
        detailCartsTemp[i].masanpham === masanpham &&
        detailCartsTemp[i].dungluong === dungluong &&
        detailCartsTemp[i].mausac === mausac
      ) {
        detailCartsTemp[i].soluong = quantity;
        await this.setState({ detailCarts: detailCartsTemp });
        break;
      }
    }
    await this.tinhTien();
  }

  changeSelect(masanpham, dungluong, mausac) {
    var detailcartstemp = this.state.detailCarts;
    for (var i = 0; i < detailcartstemp.length; i++) {
      if (
        detailcartstemp[i].masanpham === masanpham &&
        detailcartstemp[i].dungluong === dungluong &&
        detailcartstemp[i].mausac === mausac
      ) {
        detailcartstemp[i].chon = !detailcartstemp[i].chon;
        this.setState({ detailCarts: detailcartstemp });
      }
    }
    this.tinhTien();
  }

  async tinhTien() {
    var tongtien = 0;
    var detailcartstemp = this.state.detailCarts;
    for (var i = 0; i < detailcartstemp.length; i++) {
      if (detailcartstemp[i].chon) {
        tongtien += detailcartstemp[i].tien * detailcartstemp[i].soluong;
      }
    }
    this.setState({ tongtien: tongtien });
  }

  async componentDidMount() {
    await this.loadCart();
  }

  openVoucherModal() {
    this.setState({ voucherModalIsOpen: true });
  }

  closeVoucherModal() {
    this.setState({ voucherModalIsOpen: false });
  }
  render() {
    return (
      <section>
        <div className="cart">
          <div className="container">
            <div className="row">
              <div className="col-xs-8 col-sm-8 col-md-8 col-lg-8">
                <div className="cart-inner">
                  <div className="styles__StyledProductsV2-sc-rkft9e-0 dioUnE">
                    <h4 className="productsV2__title">Giỏ hàng</h4>
                    <div className="productsV2-heading box-shadow">
                      <div className="row">
                        <div className="col-1">
                          <label className="styles__StyledCheckbox-sc-kvz5pc-0 hNjxWW">
                            <input type="checkbox" />
                            <span className="checkbox-fake" />
                            <span className="label">Tất cả (1 sản phẩm)</span>
                          </label>
                        </div>
                        <div className="col-2">Đơn giá</div>
                        <div className="col-3">Số lượng</div>
                        <div className="col-5">
                          <span className="productsV2__remove-all">
                            <img
                              src="https://frontend.tikicdn.com/_desktop-next/static/img/icons/trash.svg"
                              alt="deleted"
                            />
                          </span>
                        </div>
                      </div>
                    </div>
                    <div className="productsV2-content pink-shadow">
                      <div>
                        <div
                          className="infinite-scroll-component "
                          style={{ height: "auto", overflow: "auto" }}
                        >
                          <div className="styles__StyledIntendedSeller-sc-1dwh2vk-0 kTsjPS">
                            <div className="sellers">
                              <div className="pustProduct">
                                {this.pushProduct()}
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div className="col-xs-4 col-sm-4 col-md-4 col-lg-4">
                <div className="cart-total-prices">
                  <div className="cart-total-prices__inner">
                    <div className="styles__StyledShippingAddress-sc-1sjj51k-0 juqUnC box-shadow">
                      <p className="heading">
                        <span className="text">Giao tới</span>
                        <span
                          data-view-id="cart_shipping_location.change"
                          className="link"
                        >
                          Thay đổi
                        </span>
                      </p>
                      <p className="title">
                        <b className="name">
                          {this.props.customer.makhachhangNavigation !==
                            undefined &&
                            this.props.customer.makhachhangNavigation
                              .tenkhachhang}
                        </b>
                        <b className="phone">
                          {this.props.customer.makhachhangNavigation !==
                            undefined &&
                            this.props.customer.makhachhangNavigation
                              .sodienthoai}
                        </b>
                      </p>
                      <p className="address">
                        {this.props.customer.makhachhangNavigation !==
                          undefined &&
                          this.props.customer.makhachhangNavigation.diachi}
                      </p>
                    </div>
                    <div className="styles__StyledWrapCoupons-sc-1d6idyr-0 ekRzNN box-shadow">
                      <AddVoucherModal
                        modalIsOpen={this.state.voucherModalIsOpen}
                        customer={this.props.customer}
                        closeModal={this.closeVoucherModal.bind(this)}
                      ></AddVoucherModal>
                      <div className="styles__StyledCouponBox-sc-1ibe03g-0 jmylnB">
                        <div className="title-usage">
                          <p className="coupon-title">Tiki khuyến mãi</p>
                          <p className="max-usage">
                            Có thể chọn 2
                            <img
                              className="max-usage__info"
                              src="https://frontend.tikicdn.com/_desktop-next/static/img/mycoupon/icons-info-gray.svg"
                              alt="info"
                            />
                          </p>
                        </div>
                        <div
                          className="eligible_coupon_list"
                          data-view-id="platform_coupon"
                        />
                        <div
                          data-view-id="platform_coupon.cart_coupon_view.all"
                          className="show-more"
                          onClick={this.openVoucherModal.bind(this)}
                        >
                          <img
                            alt=""
                            src="https://frontend.tikicdn.com/_desktop-next/static/img/mycoupon/coupon_icon.svg"
                          />
                          <span>Chọn hoặc nhập Khuyến mãi </span>
                        </div>
                      </div>
                    </div>
                    <div className="styles__StyledCartPrices-sc-1op1gws-0 cdzcxd box-shadow">
                      <div className="prices">
                        <ul className="prices__items">
                          <li className="prices__item">
                            <span className="prices__text">Tạm tính</span>
                            <span className="prices__value">
                              {this.state.tongtien}đ
                            </span>
                          </li>
                          <li className="prices__item">
                            <span className="prices__text">Giảm giá</span>
                            <span className="prices__value">0đ</span>
                          </li>
                        </ul>
                        <div className="prices__total">
                          <span className="prices__text">Tổng cộng</span>
                          <div className="prices__content">
                            <div className="prices__value prices__value--empty">
                              {this.state.tongtien === 0
                                ? "Vui lòng chọn sản phẩm"
                                : this.state.tongcong}
                            </div>
                            <span className="prices__value--noted">
                              (Đã bao gồm VAT nếu có)
                            </span>
                          </div>
                        </div>
                      </div>
                    </div>
                    <button
                      data-view-id="cart_navigation_proceed box-shadow"
                      data-view-label='{"shipping_salerules":[]}'
                      type="button"
                      className="cart__submit"
                    >
                      Mua Hàng (0)
                    </button>
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
index.propTypes = {
  customer: PropTypes.object,
};

const mapStateToProps = (state) => {
  return {
    customer: state.login.customer,
  };
};

export default connect(mapStateToProps)(withRouter(index));
