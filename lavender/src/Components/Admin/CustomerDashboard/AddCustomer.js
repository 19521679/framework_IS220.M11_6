import React, { Component } from 'react'

export default class AddCustomer extends Component {
    render() {
        return (
            <div>
                  <div className="row mb-1">
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6">Số hoá đơn</div>
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
            <input
              className="form-control border "
              id="sohoadon"
              placeholder=""
              disabled
            
            ></input>
          </div>
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
            </div>
        )
    }
}
