import React, { Component } from "react";
import Modal from "../MyModal/index";
import * as hoadonApi from "../../apis/billing";
import * as myToast from "../../../Common/helper/toastHelper";

export default class AddBill extends Component {
  state = {
    chitiethoadon: 0,
  };
  themChiTietHoaDon() {
    this.setState({ chitiethoadon: this.state.chitiethoadon + 1 });
  }
  async saveChanges() {
    let makhachhang = document.getElementById("makhachhang").value;
    let makhuyenmai = document.getElementById("makhuyenmai").value;
    let ngayhoadon = document.getElementById("ngayhoadon").value;
    let manhanvien = document.getElementById("manhanvien").value;
    let tongtien = document.getElementById("tongtien").value;

    let imei = document.getElementsByName("imei");
    let tien = document.getElementsByName("tien");
    let chitiethoadon = [];
    if (imei !== undefined)
      for (let i = 0; i < imei.length; i++) {
        let temp = { imei: imei[i].value, tien: tien[i].value };
        chitiethoadon.push(temp);
      }

    let hoadon = {
      makhachhang: parseInt(makhachhang),
      makhuyenmai: parseInt(makhuyenmai),
      ngayhoadon: ngayhoadon,
      manhanvien: parseInt(manhanvien),
      tongtien: parseInt(tongtien),
      chitiethoadon: chitiethoadon,
    };
    console.log('hoadon'+JSON.stringify(hoadon));
    await hoadonApi.addBilling(hoadon)
    .then((success)=>{
        if (success.status===200) {
            myToast.toastSucces("Thêm mới hoá đơn thành công");
            this.props.handleSave();
        }
        else myToast.toastError("Thêm mới thát bại");
    })
    .catch((error)=>{
        console.log('error'+JSON.stringify(error));
    });
    // this.props.handleSave();
  }
  render() {
    return (
      <Modal
        handleClose={this.props.handleClose}
        handleSave={this.saveChanges.bind(this)}
        title={"Hoá đơn"}
      >
        <div className="row mb-1">
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6">Số hoá đơn</div>
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6 "></div>
        </div>
        <div className="row mb-1">
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6">
            Mã khách hàng
          </div>
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
            <input
              className="form-control border "
              id="makhachhang"
              placeholder=""
            ></input>
          </div>
        </div>
        <div className="row mb-1">
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6">
            Mã khuyến mãi
          </div>
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
            <input
              className="form-control border"
              id="makhuyenmai"
              placeholder=""
            ></input>
          </div>
        </div>
        <div className="row mb-1">
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6">
            Ngày hoá đơn
          </div>
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
            <input
              className="form-control border"
              type="date"
              id="ngayhoadon"
              name="trip-start"
            ></input>
          </div>
        </div>
        <div className="row mb-1">
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6">
            Mã nhân viên
          </div>
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
            <input
              className="form-control border"
              id="manhanvien"
              placeholder=""
            ></input>
          </div>
        </div>
        <div className="row mb-1">
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6">Tổng tiền</div>
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
            <input
              className="form-control border"
              id="tongtien"
              placeholder=""
            ></input>
          </div>
        </div>
        <hr></hr>

        {function () {
          let result = [];
          for (var i = 0; i < this.state.chitiethoadon; i++) {
            result.push(
              <div>
                <div className="row mb-1">
                  <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                    IMEI
                  </div>
                  <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
                    <input
                      className="form-control border"
                      id="imei"
                      name="imei"
                      placeholder=""
                    ></input>
                  </div>
                </div>
                <div className="row mb-1">
                  <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                    Tiền
                  </div>
                  <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
                    <input
                      className="form-control border"
                      id="tien"
                      name="tien"
                      placeholder=""
                    ></input>
                  </div>
                </div>
                <hr></hr>
              </div>
            );
          }
          return result;
        }.bind(this)()}

        <div className="row mb-1">
          <button
            className="btn btn-info"
            onClick={this.themChiTietHoaDon.bind(this)}
          >
            Thêm chi tiết hoá đơn
          </button>
        </div>
      </Modal>
    );
  }
}
