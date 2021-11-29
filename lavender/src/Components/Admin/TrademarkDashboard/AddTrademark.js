import React, { Component } from 'react'

export default class AddTrademark extends Component {
    render() {
        return (
            <div>
                  <div className="row mb-1">
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6">Mã thương hiệu</div>
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
            <input
              className="form-control border "
              id="mathuonghieu"
              placeholder=""
              disabled
            
            ></input>
          </div>
        </div>
        <div className="row mb-1">
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6">
            Tên thương hiệu
          </div>
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
            <input
              className="form-control border "
              id="tenthuonghieu"
              placeholder=""
       
            ></input>
          </div>
        </div>
        <div className="row mb-1">
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6">
            Xuất xứ
          </div>
          <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
            <input
              className="form-control border"
              id="xuatxu"
              placeholder=""
     
            ></input>
          </div>
        </div>
        <div className="row mb-1">
          <button
            className="btn btn-info"
            // onClick={this.themThuongHieu.bind(this)}
          >
            Thêm thông tin thương hiệu
          </button>
        </div>
       
        
        <hr></hr>
            </div>
        )
    }
}
