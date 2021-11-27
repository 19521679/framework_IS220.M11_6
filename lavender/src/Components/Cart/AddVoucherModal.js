import React, { Component } from "react";
import "reactjs-popup/dist/index.css";
import Modal from "react-modal";
import "./AddVoucherModal.css";
import logo from "../img/logo.png";
import * as voucherApi from "../apis/myvoucher";

const customStyles = {
  content: {
    top: "50%",
    left: "50%",
    right: "auto",
    bottom: "auto",
    marginRight: "-50%",
    transform: "translate(-50%, -50%)",
  },
};

class VoucherItem extends Component {
  async componentDidMount() {
    
  }
  render() {
    return (
      <div
        className="sc-jrsJWt bJoZof coupon-list__coupon-item"
        type="full"
        style={{ width: "100%", position: "relative", zIndex: 2 }}
      >
        <div className="sc-fujyAs HRJop" type="full">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            xmlnsXlink="http://www.w3.org/1999/xlink"
            viewBox="0 0 474 132"
            className="coupon-bg"
          >
            <g fill="none" fillRule="evenodd">
              <g>
                <g>
                  <g>
                    <g>
                      <g>
                        <g transform="translate(-3160 -2828) translate(3118 80) translate(42 2487) translate(0 140) translate(0 85) translate(0 36)">
                          <path
                            fill="#FFF"
                            d="M466 0c4.418 0 8 3.582 8 8v116c0 4.418-3.582 8-8 8H140.5c0-4.419-3.582-8-8-8s-8 3.581-8 8H8c-4.418 0-8-3.582-8-8V8c0-4.418 3.582-8 8-8h116.5c0 4.418 3.582 8 8 8s8-3.582 8-8H392z"
                          />
                          <g
                            stroke="#EEE"
                            strokeDasharray="2 4"
                            strokeLinecap="square"
                            mask="url(#14s2l20tnb)"
                          >
                            <path
                              d="M0.5 0L0.5 114"
                              transform="translate(132 11)"
                            />
                          </g>
                        </g>
                      </g>
                    </g>
                  </g>
                </g>
              </g>
            </g>
          </svg>
          <div className="sc-iqAclL jibPFy">
            <div className="sc-iklJeh hbusih">
              <img
                className="sc-pNWdM"
                src={logo}
                alt="not_eligible-stamp"
                style={{ bottom: "4px", right: "4px" }}
              />
            </div>
            <div className="sc-iJCRrE bojiJp">
              <div className="sc-giAqHp bYgUJS"></div>
              <button
                className="sc-cxNHIi fHUQtx"
                data-view-id="cart_coupon_view.coupon.rule"
                aria-describedby="popup-3"
                style={{
                  position: "absolute",
                  top: "12px",
                  right: "12px",
                  transform: "translate(8px, -8px)",
                }}
              >
                <img
                  className="sc-iwajpm kydRHc"
                  src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20xmlns%3Axlink%3D%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink%22%20width%3D%2220%22%20height%3D%2220%22%20viewBox%3D%220%200%2020%2020%22%3E%20%20%20%20%3Cdefs%3E%20%20%20%20%20%20%20%20%3Cpath%20id%3D%224gg7gqe5ua%22%20d%3D%22M8.333%200C3.738%200%200%203.738%200%208.333c0%204.595%203.738%208.334%208.333%208.334%204.595%200%208.334-3.739%208.334-8.334S12.928%200%208.333%200zm0%201.026c4.03%200%207.308%203.278%207.308%207.307%200%204.03-3.278%207.308-7.308%207.308-4.03%200-7.307-3.278-7.307-7.308%200-4.03%203.278-7.307%207.307-7.307zm.096%206.241c-.283%200-.512.23-.512.513v4.359c0%20.283.23.513.512.513.284%200%20.513-.23.513-.513V7.78c0-.283-.23-.513-.513-.513zm.037-3.114c-.474%200-.858.384-.858.858%200%20.473.384.857.858.857s.858-.384.858-.857c0-.474-.384-.858-.858-.858z%22%2F%3E%20%20%20%20%3C%2Fdefs%3E%20%20%20%20%3Cg%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%3E%20%20%20%20%20%20%20%20%3Cg%3E%20%20%20%20%20%20%20%20%20%20%20%20%3Cg%3E%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cg%3E%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cg%3E%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cg%20transform%3D%22translate%28-2808%20-4528%29%20translate%282708%2080%29%20translate%2852%204304%29%20translate%2848%20144%29%20translate%281.667%201.667%29%22%3E%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3Cuse%20fill%3D%22%23787878%22%20xlink%3Ahref%3D%22%234gg7gqe5ua%22%2F%3E%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C%2Fg%3E%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C%2Fg%3E%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%20%3C%2Fg%3E%20%20%20%20%20%20%20%20%20%20%20%20%3C%2Fg%3E%20%20%20%20%20%20%20%20%3C%2Fg%3E%20%20%20%20%3C%2Fg%3E%3C%2Fsvg%3E"
                  alt="disabled-info-icon"
                />
              </button>
              <div style={{ paddingRight: "28px" }}>
                <h4 className="sc-hBMUJo ifIyhA">
                  {this.props.voucher.tenkhuyenmai}
                </h4>
                <p className="sc-fnVZcZ hmqpxx">{this.props.voucher.dieukien}</p>
                <p className="sc-fnVZcZ hmqpxx">Giảm {(this.props.voucher.tilekhuyenmai*100).toFixed(0)}%</p>
              </div>
              <div className="sc-ezzafa dvHFX">
                <p className="sc-pNWdM XJxhY" style={{ paddingRight: "8px" }}>
                  HSD:{" "}
                  {(() => {
                    var dateObj = new Date(this.props.voucher.ngayketthuc);
                    const day = String(dateObj.getDate()).padStart(2, "0");
                    const month = dateObj.getMonth() + 1;
                    const year = dateObj.getFullYear();
                    const output = day + "/" + month + "/" + year;
                    return output;
                  })()}
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

export default class AddVoucherModal extends Component {
  constructor(props) {
    super(props);
    this.state = {
      subtitle: undefined,
      makhuyenmai: undefined,
      listvoucher: [],
    };
  }
  afterOpenModal() {
    var a = this.state.subtitle;
    a.style.color = "#f00";
    a.style.width = "500px";
    a.style.height = "500px";
    this.setState({ subtitle: a });
  }
  closeModal() {
    this.props.closeModal();
  }
  async componentDidMount() {
    let listvoucher = null;
    await voucherApi
      .detailMyVoucher(this.props.customer.makhachhang)
      .then((success) => {
        if (success.status === 200) {
          listvoucher = success.data.value.$values;
        }
      })
      .catch((error) => {
        console.error(error);
      });

    this.setState({ listvoucher: listvoucher });
    console.log(this.state);
  }

  render() {
    return (
      <Modal
        isOpen={this.props.modalIsOpen}
        onRequestClose={this.closeModal.bind(this)}
        style={customStyles}
        contentLabel="Example Modal"
      >
        <div className="styles__StyledCouponModal-sc-evws2p-0 ijfiKe">
          <div className="header">
            <div className="title">Lavender Khuyến Mãi</div>
            <svg
              stroke="currentColor"
              fill="currentColor"
              strokeWidth={0}
              viewBox="0 0 24 24"
              className="close"
              size={25}
              color="#999999"
              height={25}
              width={25}
              xmlns="http://www.w3.org/2000/svg"
              style={{ color: "rgb(153, 153, 153)" }}
            >
              <path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z" />
            </svg>
          </div>
          <div className="styles__StyledCouponInput-sc-1jz9vfn-0 bBpgLT">
            <input
              data-view-id="cart_coupon_input"
              placeholder="Nhập Mã Khuyến Mãi"
              className="input"
              style={{ width: "330px" }}
              value={this.state.makhuyenmai}
              onChange={(e) => this.setState({ makhuyenmai: e.target.value })}
            />
            <button
              data-view-id="cart_coupon_apply.button"
              className="btn btn-primary"
              style={{ opacity: "0.5", width: "100px" }}
            >
              Áp Dụng
            </button>
          </div>
          <div className="body-scroll">
            <div className="styles__GroupedCouponWrapper-sc-evws2p-1 jdEAhj">
              <div className="group-header">
                <div className="group-header__title">Mã Giảm Giá</div>
                <div className="group-header__condition">Áp dụng tối đa: 1</div>
              </div>
              <div
                className="coupon-list"
                data-view-id="platform_coupon"
                data-view-index={0}
              >
                <div>
                  {function () {
                    let result = null;
                    result = this.state.listvoucher.map((value, key) => {
                      return <VoucherItem voucher={value}></VoucherItem>;
                    });
                    return result;
                  }.bind(this)()}
                </div>
              </div>
            </div>
          </div>
          <div className="footer">
            <button className="btn btn-primary btn-xong">Xong</button>
          </div>
        </div>
      </Modal>
    );
  }
}
