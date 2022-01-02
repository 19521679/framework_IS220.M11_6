import React, { useState, useEffect } from "react";
import * as imageApi from "../../apis/image";

import DanhgiaModal from "./DanhgiaModal";
import * as productApi from "../../apis/product";
import { numberWithCommas } from "../../../Common/helper/numberHelper";
export default function SanphamItem(props) {
  const [showModal, setShowModal] = useState(false);
  const [item, setItem] = useState();
  useEffect(() => {
    productApi
      .findProductById(props.product.masanpham)
      .then((success) => {
        if (success.status === 200) {
          setItem(success.data.value);
        }
      })
      .catch((error) => {
        console.log(error);
      });
  }, [props.product]);
  function closeModal() {
    setShowModal(false);
  }
  function openModal() {
    setShowModal(true);
  }
  return (
    <div>
      <DanhgiaModal
        showModal={showModal}
        closeModal={closeModal}
        masanpham={props.product.masanpham}
        makhachhang={props.makhachhang}
      ></DanhgiaModal>
      {item !== undefined && (
        <>
          <div className="_3btL3m">
            <div className="shopee-image__wrapper">
              <img
                alt=""
                className="shopee-image__content"
                src={imageApi.image(props.product.image)}
              ></img>
            </div>
            <div className="_1cxKtp " style={{ marginLeft: "90px" }}>
              <div className="_1xHDVY">
                <span className="_30COVM text-info">{item.tensanpham}</span>
                <span
                  className="_30COVM text-info imei"
                  style={{ paddingLeft: "40px" }}
                >
                  Imei: {props.product.imei}
                </span>
              </div>
              <div className="_1kvNGb text-warning">
                <div>
                  Đơn giá: <span>{numberWithCommas(item.dongia)}₫</span>
                </div>
              </div>
              <div className="_1kvNGb text-secondary">
                <div>
                  <span className="">
                    {props.product.mausac} - {props.product.dungluong}
                  </span>
                </div>
              </div>
            </div>
          </div>

          <div className="_1J7vLy">
            <div className="DI-rNr tyOBoQ"> </div>
            <div className="DI-rNr _25igL4"> </div>
            <button className="btn btn-primary danhgia-btn" onClick={openModal}>
              Đánh giá
            </button>
          </div>

          <hr></hr>
        </>
      )}
    </div>
  );
}
