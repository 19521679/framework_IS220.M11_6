import React, { Component } from "react";

export default class Item extends Component {
  render() {
    return (
      <tr>
        <td className="align-middle text-center">
          <span className="text-secondary text-xs font-weight-bold">
            {this.props.thuonghieu.tenthuonghieu}
          </span>
        </td>
        <td className="align-middle text-center">
          <span className="text-secondary text-xs font-weight-bold">
          {this.props.thuonghieu.xuatxu}
          </span>
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
