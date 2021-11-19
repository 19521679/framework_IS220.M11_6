import React, { Component } from "react";

export default class Item extends Component {
  render() {
    return (
      <tr>
        <td className="align-middle text-center">
          <span className="text-secondary text-xs font-weight-bold">
            {this.props.khachhang.tenkhachhang}
          </span>
        </td>
        <td className="align-middle text-center">
          <span className="text-secondary text-xs font-weight-bold">
          {this.props.khachhang.email}
          </span>
        </td>
        <td className="align-middle text-center">
          <span className="text-secondary text-xs font-weight-bold">
          {this.props.khachhang.sodienthoai}
          </span>
        </td>
        <td className="align-middle text-center">
          <span className="text-secondary text-xs font-weight-bold">
          {this.props.khachhang.diachi}
          </span>
        </td>
        <td className="align-middle text-center">
          <span className="text-secondary text-xs font-weight-bold">
          {this.props.khachhang.ngaysinh}
          </span>
        </td>
        <td className="align-middle text-center">
          <span className="text-secondary text-xs font-weight-bold">{this.props.khachhang.loaikhachhang}</span>
        </td>
        <td className="align-middle">
          <a
            href="javascript:;"
            className="text-secondary font-weight-bold text-xs"
            data-toggle="tooltip"
            data-original-title="Edit user"
          >
            Edit/
          </a>
          <a
            href="javascript:;"
            className="text-secondary font-weight-bold text-xs"
            data-toggle="tooltip"
            data-original-title="Edit user"
          >
            Delete
          </a>
        </td>
      </tr>
    );
  }
}
