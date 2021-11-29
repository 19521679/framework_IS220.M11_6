import React, { Component } from 'react'

export default class AddGuarantee extends Component {
    render() {
        return (
            <div>
                  <div className="row mb-1">
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6">Mã bảo hành</div>
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
            <input
              className="form-control border "
              id="mabaohanh"
              placeholder=""
              disabled
            
            ></input>
          </div>
        </div>
        <div className="row mb-1">
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6">
            IMEI
          </div>
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
            <input
              className="form-control border "
              id="IMEI"
              placeholder=""
       
            ></input>
          </div>
        </div>
        <div className="row mb-1">
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6">
           Ngày bảo hành
          </div>
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
            <input
              className="form-control border"
              id="ngaybaohanh"
              placeholder=""
     
            ></input>
          </div>
        </div>
        <div className="row mb-1">
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6">
           Chi phí
          </div>
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
            <input
              className="form-control border"
              id="chiphi"
              placeholder=""
     
            ></input>
          </div>
        </div>
        <div className="row mb-1">
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6">
           Ghi chú
          </div>
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
            <input
              className="form-control border"
              id="ghichu"
              placeholder=""
     
            ></input>
          </div>
        </div>
        <div className="row mb-1">
          <button
            className="btn btn-info"
            // onClick={this.themBaoHanh.bind(this)}
          >
            Thêm thông tin bảo hành
          </button>
        </div>
       
        
        <hr></hr>
            </div>
        )
    }
}
