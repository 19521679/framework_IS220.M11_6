import React, { useState, useEffect } from "react";
import AddModal from "./AddModal";
import "./style.css";
import * as mobileApi from "../../apis/mobile";
import * as laptopApi from "../../apis/laptop";
import * as trademarkApi from "../../apis/trademark";
import ProductItem from "./ProductItem";
import _ from "lodash";
import LoadingContainer from "../../../Common/helper/loading/LoadingContainer";

export default function Index(props) {
  const [showModal, setShowModal] = useState(false);
  const [listmobile, setListmobile] = useState([]);
  const [listlaptop, setListlaptop] = useState([]);
  const [loading, setLoading] = useState(true);

  function closeModal() {
    setShowModal(false);
  }
  function openModal() {
    setShowModal(true);
  }

  async function loadMobile() {
    setLoading(true);
    await mobileApi
      .mobile()
      .then((success) => {
        if (success.status === 200) {
          setListmobile(success.data.value.$values);
        }
      })
      .catch((error) => {
        console.error(error);
      });
    setLoading(false);
  }

  async function loadLaptop() {
    setLoading(true);
    await laptopApi
      .laptop()
      .then((success) => {
        if (success.status === 200) {
          setListlaptop(success.data.value.$values);
        }
      })
      .catch((error) => {
        console.error(error);
      });
    setLoading(false);
  }

  useEffect(() => {
    loadMobile();
    loadLaptop();
  }, []);

  async function editProduct(product) {
    var listtemp = null;
    if (product.maloai === 1) {
      listtemp = listmobile;
    } else {
      listtemp = listlaptop;
    }

    var result = undefined;
    for (var i = 0; i < listtemp.length; i++) {
      if (listtemp[i].masanpham === product.masanpham) {
        result = listtemp[i];
      }
    }
    if (result === undefined) return;

    var tenthuonghieu = undefined;

    await trademarkApi
      .TimThuonghieuBangMathuonghieu(product.mathuonghieu)
      .then((success) => {
        if (success.status === 200) {
          tenthuonghieu = success.data.value.tenthuonghieu;
        }
      });
    result.tenthuonghieu = tenthuonghieu;
    result.tensanpham = product.tensanpham;
    result.maloai = product.maloai;
    result.mathuonghieu = product.mathuonghieu;
    result.mota = product.mota;
    result.image = product.image;
    result.thoidiemramat = product.thoidiemramat;
    result.dongia = product.dongia;
    result.thoigianbaohanh = product.thoigianbaohanh;

    if (product.maloai === 1) {
      setListmobile([...listtemp]);
    } else {
      setListlaptop([...listtemp]);
    }
  }

  async function addProduct(product) {
    var listtemp = null;
    if (product.maloai === 1) {
      listtemp = listmobile;
    } else {
      listtemp = listlaptop;
    }
    listtemp.push(product);

    if (product.maloai === 1) {
      setListmobile([...listtemp]);
    } else {
      setListlaptop([...listtemp]);
    }
  }

  async function deleteProduct(product) {
    var listtemp = null;
    if (product.maloai === 1) {
      listtemp = listmobile;
    } else {
      listtemp = listlaptop;
    }

    _.remove(listtemp, (n) => {
      return n.masanpham === product.masanpham;
    });

    if (product.maloai === 1) {
      setListmobile([...listtemp]);
    } else {
      setListlaptop([...listtemp]);
    }
  }

  return (
    <main className="main-content position-relative border-radius-lg left-menu">
      <AddModal
        showModal={showModal}
        closeModal={closeModal}
        addProduct={addProduct}
      ></AddModal>
      <LoadingContainer loading={loading}></LoadingContainer>

      {/* dienthoai */}
      <div className="container-fluid py-4">
        <div className="row">
          <div className="col-12">
            <div className="card my-4">
              <div className="card-header p-0 position-relative mt-n4 mx-3">
                <div className="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                  <h6 className="text-white text-capitalize ps-3 danhsachsanpham-title">
                    Danh s??ch ??i???n tho???i
                  </h6>
                  <button
                    className="btn bg-gradient-dark mb-0 mt-4 add-khachhang-button"
                    onClick={openModal}
                  >
                    + Th??m s???n ph???m
                  </button>
                </div>
              </div>
              <div className="card-body px-0 pb-2">
                <div className="table-responsive p-0">
                  <table className="table align-items-center mb-0">
                    <thead>
                      <tr>
                        <th className="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                          <b>T??n s???n ph???m</b>
                        </th>
                        <th className="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                          <b>???nh</b>
                        </th>
                        <th className="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                          <b>Lo???i</b>
                        </th>
                        <th className="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                          <b>Th????ng hi???u</b>
                        </th>
                        {/* <th className="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                          <b>S??? l?????ng t???n</b>
                        </th> */}
                        <th className="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                          <b> ????n gi??</b>
                        </th>
                        <th className="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                          <b> Ra m???t</b>
                        </th>
                        <th className="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                          <b>Tr???ng th??i</b>
                        </th>
                        <th className="text-secondary opacity-7" />
                      </tr>
                    </thead>
                    <tbody>
                      {listmobile.map((value, key) => {
                        return (
                          <ProductItem
                            product={value}
                            key={key}
                            addProduct={addProduct}
                            deleteProduct={deleteProduct}
                            editProduct={editProduct}
                          ></ProductItem>
                        );
                      })}
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      {/* laptop */}
      <div className="container-fluid py-4">
        <div className="row">
          <div className="col-12">
            <div className="card my-4">
              <div className="card-header p-0 position-relative mt-n4 mx-3">
                <div className="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                  <h6 className="text-white text-capitalize ps-3 danhsachsanpham-title">
                    Danh s??ch laptop
                  </h6>
                  <button
                    className="btn bg-gradient-dark mb-0 mt-4 add-khachhang-button"
                    onClick={openModal}
                  >
                    + Th??m s???n ph???m
                  </button>
                </div>
              </div>
              <div className="card-body px-0 pb-2">
                <div className="table-responsive p-0">
                  <table className="table align-items-center mb-0">
                    <thead>
                      <tr>
                        <th className="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                          <b>T??n s???n ph???m</b>
                        </th>
                        <th className="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                          <b>???nh</b>
                        </th>
                        <th className="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                          <b>Lo???i</b>
                        </th>
                        <th className="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                          <b>Th????ng hi???u</b>
                        </th>
                        {/* <th className="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                          <b>S??? l?????ng t???n</b>
                        </th> */}
                        <th className="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                          <b> ????n gi??</b>
                        </th>
                        <th className="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                          <b> Ra m???t</b>
                        </th>
                        <th className="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                          <b>Tr???ng th??i</b>
                        </th>
                        <th className="text-secondary opacity-7" />
                      </tr>
                    </thead>
                    <tbody>
                      {listlaptop.map((value, key) => {
                        return (
                          <ProductItem
                            product={value}
                            key={key}
                            addProduct={addProduct}
                            deleteProduct={deleteProduct}
                            editProduct={editProduct}
                          ></ProductItem>
                        );
                      })}
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
  );
}
