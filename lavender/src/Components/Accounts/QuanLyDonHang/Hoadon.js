import React, { useEffect, useState } from "react";
import SanphamItem from "./SanphamItem";
import { numberWithCommas } from "../../../Common/helper/numberHelper";
import * as detailProductApi from "../../apis/detailProduct";
export default function Hoadon(props) {
  const [list, setList] = useState([]);
  useEffect(() => {
    detailProductApi
      .timCacchitietsanphamBangSohoadon(props.bill.sohoadon)
      .then((success) => {
        if (success.status === 200) {
          setList(success.data.value.$values);
        }
      })
      .catch((error) => {
        console.error(error);
      });
  }, [props.bill]);
  return (
    <div className="border rounded">
      <div className="GuWdvd">
        <div className="WqnWb-">
          <div className="_1DPpu5">
            {list.map((value, key) => {
              return <SanphamItem product={value} key={key}></SanphamItem>;
            })}
          </div>
        </div>
      </div>

      <div>
        <hr></hr>
        <tr>
          <td> Số HD: {props.bill.sohoadon}</td>
          <td>Ngày HD: {props.bill.ngayhoadon}</td>
          <td>Mã KM: {props.bill.makhuyenmai}</td>
          <td>
            {" "}
            <strong>
              Thành tiền: {numberWithCommas(props.bill.tongtien)} đ
            </strong>{" "}
          </td>
        </tr>
      </div>
      <div className="_1J7vLy">
        <div className="DI-rNr tyOBoQ"> </div>
        <div className="DI-rNr _25igL4"> </div>
        {/* <button></button> */}
      </div>
    </div>
  );
}
