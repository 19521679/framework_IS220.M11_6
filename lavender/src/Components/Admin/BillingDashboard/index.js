import React, { useState, useEffect } from "react";
import * as hoadonAPI from "../../apis/billing";
import * as noteAPI from "../../apis/note";
import BillItem from "./BillItem";
import ImportItem from "./ImportItem";
import "./style.css";
import AddBill from "./AddBill";
import AddNote from "./AddNote";
import Cookies from "universal-cookie";
import LoadingContainer from "../../../Common/helper/loading/LoadingContainer";
import * as fileApi from "../../apis/file";

const FileDownload = require("js-file-download");

const cookie = new Cookies();

export default function Index(props) {
  const [billing, setBilling] = useState();
  const [importBilling, setImportBilling] = useState();
  const [modal, setModal] = useState(0);
  const [loading, setLoading] = useState();
  const [tungay1, setTungay1] = useState(new Date());
  const [denngay1, setDenngay1] = useState(new Date());
  const [tungay2, setTungay2] = useState(new Date());
  const [denngay2, setDenngay2] = useState(new Date());

  const showModal = (index) => {
    setModal(index);
  };
  const hideModal = () => {
    setModal(0);
  };
  async function loadBill() {
    var token = cookie.get("token");
    var refreshtoken = cookie.get("refreshtoken");
    await hoadonAPI
      .twentyhoadon(token, refreshtoken)
      .then((success) => {
        setBilling(success.data.value.$values);
        console.log(success.data.value.$values);
      })
      .catch((error) => {
        console.error(error);
      });
  }

  async function loadImport() {
    setLoading(true);
    var token = cookie.get("token");
    var refreshtoken = cookie.get("refreshtoken");
    await noteAPI
      .importNote(token, refreshtoken)
      .then((success) => {
        if (success.status === 200) {
          setImportBilling(importBilling);
        }
      })
      .catch((error) => {
        console.error(error);
      });
  }
  useEffect(() => {
    (async () => {
      setLoading(true);
      await Promise.allSettled([loadBill(), loadImport()])
        .then((results) =>
          results.forEach((result) => console.log(result.status))
        )
        .catch((error) => {
          console.error(error);
        });
      setLoading(false);
    })();
  }, []);

  function xuatFileHoadon() {
    fileApi
      .xuatHoadon(
        new Date(tungay1).toISOString().split("T")[0],
        new Date(denngay1).toISOString().split("T")[0],
        cookie.get("token"),
        cookie.get("refreshtoken")
      )
      .then((success) => {
        if (success.status === 200) {
          FileDownload(success.data, "hoadon.xlsx");
        }
      })
      .catch((error) => {
        console.log(error);
      });
  }
  function xuatFilePhieunhap() {
    fileApi
      .xuatPhieunhap(
        new Date(tungay2).toISOString().split("T")[0],
        new Date(denngay2).toISOString().split("T")[0],
        cookie.get("token"),
        cookie.get("refreshtoken")
      )
      .then((success) => {
        if (success.status === 200) {
          FileDownload(success.data, "phieunhap.xlsx");
        }
      })
      .catch((error) => {
        console.log(error);
      });
  }
  return (
    <main className="main-content position-relative border-radius-lg left-menu" style={{minWidth: "1100px"}}>
      <LoadingContainer loading={loading}></LoadingContainer>
      <>
        {(() => {
          if (modal === 1)
            return (
              <AddBill
                handleClose={hideModal}
                handleSave={() => {
                  loadBill();
                  hideModal();
                }}
              ></AddBill>
            );
          else if (modal === 2)
            return (
              <AddNote
                handleClose={hideModal}
                handleSave={() => {
                  loadImport();
                  hideModal();
                }}
              ></AddNote>
            );
        })()}
      </>
      {/* End Navbar */}
      <div className="container-sm py-4">
        <div className="row">
          <div className="col-lg-8">
            <div className="row mt-4">
              <div className="container mt-3">
                <div className="d-flex align-items-center cards1">
                  <div className="card1" style={{ marginLeft: "0.5rem" }}>
                    <div className="mb-3">
                      {" "}
                      <span className="text-grey fs-5">Thống kê</span>
                    </div>
                    <div className="mt-auto">
                      <div className="d-flex align-items-center">
                        <div className="profile">
                          {" "}
                          <img
                            src="https://icons.iconarchive.com/icons/graphicloads/polygon/256/stats-icon.png"
                            alt=""
                          />{" "}
                        </div>
                        <div className="ms-2">
                          <div className="light-grey fs-6">Số hóa đơn</div>
                          <div className="text-grey fs-5">2</div>
                          <div className="light-grey fs-6">Số phiếu nhập</div>
                          <div className="text-grey fs-5">5</div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div className="card1" style={{ marginLeft: "11.5rem" }}>
                <div className="mb-3">
                  {" "}
                  <span className="text-grey fs-5">Tổng tiền phiếu nhập</span>
                </div>
                <div className="mt-auto">
                  <div className="d-flex align-items-center">
                    <div className="profile">
                      {" "}
                      <img
                        src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm7rWFV6QE1SKhM51OPN7FzUJTTA7oPLCQVSnadkGJMM-i9uHTM0Ltr-Tipjq-GuV8Yms&usqp=CAU"
                        alt=""
                      />{" "}
                    </div>
                    <div className="ms-2">
                      <div className="light-grey fs-6">Chi</div>
                      <div className="text-grey fs-5">7200000</div>
                    </div>
                  </div>
                </div>
              </div>
              <div className="card1" style={{ marginLeft: "23rem" }}>
                <div className="mb-3">
                  {" "}
                  <span className="text-grey fs-5">Tổng tiền hoá đơn</span>
                </div>
                <div className="mt-auto">
                  <div className="d-flex align-items-center">
                    <div className="profile">
                      {" "}
                      <img
                        src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAABDlBMVEWcy1v///+NtVL+9eTv5ND6yQD/7TP27dqLtE+ayljz5tWWyE6ayFn/9+nx5dKIs0qYyVTWy7fp892gzWLv9uWlz2qUx0rC3p7g7s7y+OuFsEL4+/T4/PTx9+rc7MjP5LS114aq0nbX6cC52Y7H4afl8Nan0G/f3Lzm4MX93SGw1X+vxYD/7SX70hPUy73L16Xu7s7J3ZzZ5LKmwXS0x4WbvGW5yo3V16/255f81xrh1sLe57nE05y40ZefvmvJ27H/9dbx5b3R3Eb/72T06Df/8Hj+9Mfy5bb/8Yj+8Zn/8qq+0kq0xEPiyCPuyRSouUPx3J340Ejgyov202j11XLXy6z02ZH01nv20lnby53mKT49AAAQt0lEQVR4nN3d+Z/aNhYAcDCeINvBcjgHMwcDBMiQCWQZQzpDSNskPbJtt2l67f//j6xkc/iS/XQwQ/d9+lNmGvhGsvSeJNuF4v97FB7sk87O2uf1Ko36efvs7ME+9+DCTvXistW9atQKjtW0gmhaTqHWuOq2Li+qnUN/gQMKO9Ve67pGVI5jkChEg/6R4xBt7brVO6TzQMJ6r9WgtrgrLQzqbLR69cN8lQMI272+AcRFmUa/11b/dVQLq4OGQ64ysSD/Z2NQVfyNlAqrrRpv26W0Za2lFKlOWB/UmpK8LbJZG6i7KFUJe0M1vB1y2FP0zZQI6y3DUsfbIC2jpaQhFQirXeGhJTscq6vgipQWnl4dyBcYr04fWXjaUN49o2FYDUmjlPB0eGBfYBxKGSWE9esH8AXGa4kxR1h41n8gX2DsC5dbosJL53DjS1o4zuWDCqs160F9NKya2NQhJGw9YAfdh2G1Hkj4vPawHXQfTu35QwhbzcdowCCMJn8z8grrjcdqwCCcBu/EwSm8fJQrMByGxTmo8gm7Dz+EJsPqHkx4/sg9dBtO4/wwwlOFJa5cGA5HpgoXDpqPDQtFc6Be2D+GS3AfVl+18Pq4gIR4rVTYGR7HGBMOZwjbCgAJ24+Wp2WFUwOtkEOE7aMZRKNhOBAiQFhP7BsdSxgGIIXLFwoBH+jfBELMFbYFgI4zLMhuYMDCMHI7ap5Q5Bp0BpVKZfa6wYM0HPoff+RfiznCTk0A+LpSIsGDdJzuyNaXAh9WMGo5k0aOUGQetGalTVRKBOnkIh2jPzJtXTfHT/k/jcyLMsJrkY6zF25aMntT0XH6Y+ojYU6EiNnZTaZQLBfd9NIIktVdDcd4rW98RHiLRIjZOWqWcCCai5biwUAaVmO69+m2rmmaEDGr0sgQnoqWS86/KgljcE2GkHQ7u7+0TX0f9hQLEpsZ9SJbeC6cixqNFGHQkoNrQnPo4DN8vQw1X9BJPaQJEh121c8WNsRnbGuWTqTI0nhEYmybMR5pwiVtQjGi0eAXdiXKCeOKJSyVyrpNQ0+GOUeaMNFhLk+xhJdSFW9kwogLGWGPXE0TJzIXGRnCulxJb3SZjcgU7ptQkMhIwhlCiYsw+DhmI7KE9ghrmgyRdSmmC1uyNb1xzWpEljDShEJEJ31PI1X4XH7hkDmcMoS7gVSC2EzdmUoViuT4sTCGfMLNXChFNGpQoXQfpWGlJTZMoTmNN6EIMbWfpgirapZGHY42tPVECwoRrZSN8BShgj7qC/upjZgqNG9TmlCAmNZPk0K5uT4U6YNNmjA2U0gQU+b9hPBM2eKv0QC2oa0nhxlRopM4d5MQ9tUtb5N+Wkk0Y0JoM/uoCNFJVMNxoWS6Fvu42dfflWLKiJBUGPo33zD7qAgxkbzFhdcqVzm/ffLy5cv3n76uhJTlkM785s178htPvs0SchKN+KpNTHiqsAmND0/8ePnyw8dP331NG5NE2fRDH3//5uMHovPjA/M65Cdap5nCobomfLoBBkjCfP/xhx8/ffr05s2PP3x8/4H+2f4XPqhrRWOYJVTZhP9+Eo+Xu0j86MlP6oixRowKZYumcPx88iIJYcSLk58zhVzEWBkVEapswsIvJycnNxDkixvym79kC7mI0UaMCK9UDqRUmI/0eQAhD9G4YgkVpdyb+PlkFzcv0pgvtjoaOb2UjxhJwMNCmeW1ZPx0Eo2bm69ebOOrm5vYT/+TK+QgRhbeQkKl6Uwh0oi5kd+EXMRwYhMSKil8xYggIAcxXAqHhMrvXGr8+hnk+/wbu7YQJBppwp7iTmoUZqY5/vVLDu/Lb3+8evWHppho9VKEChM2Gs6wXCFZtkmVv6e35effqe7VMxpeZn3BTQylbjthXe3RQ6u/LyRooq1//+uff335+zONv7/89edv/332bKsjcWdn1YgCxGY9IRwoHWf2K23lULFE4+5VEM9CcUd/nLbaJk50BgmhovUnPwznPlz1lsNV792zaFBd0NJLDLsYQcT9mtRWWFXYSQ0jZQ2qXC7bEeHd3V1swW2EFBKb1ZhQ4WRo1JgbpKzVxE1HHgOHVAhxNyUWlHfSbGCWUClx1003QnVJN5kGs4CZQqXEbfpdUD2SsvfwAUJCVDaibkfTjVBZce/kAHOEGcvfvMRtqR8I26qa0LrPAeYJ6aShiLg5tVhQmpNar/OAuULdXCkibnLTQKhoKd9hH1CAC3Vzooa4WeAPhGquwvStGG5h2n6wENHYCxVV905ZjdAeA4U5xKDSL6i7DPNHGaAQPtpkE4MLsaAsZWPs+YoIdXOhghgkbgVVsyHoIoQKdRt6KWYRgxmRCjsq6oq8XIZTCJ34M4nNzkaoIimNH32WFMJnxSyin5oW1Aw0rEOzwkL4lJFB9IeagpqBBtpH4UKOfsok+kMNFcrvbAPHUXpGuGwnDgczGhE8njKJ/o43FdZkgSmn8xkNuFqtFosRiGjr0EVUNrEWCOWHUtYZtqQQk3CnwEaErr6xiXQwLSgYSpnnEJNC2ioYKNTNNbwR04l0MCXCC1khxzDDJQyf/BYjWhe+8FJyKM041C0nTJwb5ibSBxMV5CeLjIP5DKGpw4w8M0YqkU4XRNiVmywgZe8mKr4QLUZjncwZAKU54WnEJNHo+kLJ8wkOsAkrpftJkKcg7CLvNnFTUFojQpfeGER6ZqEgW1kAJ/tKaYVwaNUeIYxvR6obMU6k1UVBdrkb1oSVJUq2hrsw84ScV2KcSBe+C8UzGR9wIK1M3ZS2wIDkhm84TbbiGRVKDaWggZQAd98A7boq8nJ9vHNiguhQYVtmws+6S20fs21XI2OM5nkaSd0IE93mdlKdq4pKIVptIjyXSUtBq0+VbU/D81GlRDeCR9MJyU+XkFkxeTMND7F5ToRSS4kGTxPiRWVTH9q2qa882Lxv87ZhmGjViVAm8QatXVQ2CxLIo7+839eH8HS+OjFBJKm3pBA0zmw6KZ6GheDgnjDCRFkhbJypbMYKfF8SEfIVUTGirDD1tvSkUJNqw81N7GJE6V4K2ajYtSHSxNoQvo2RJPpC8bEUWBhWJrvJgqSn/EL+vGZP9MdS8fkQthVDMpptL8PerCIgFOumPtGfD8VzGsYdhoko774gcicj4GJiWKiLCQnRz2mE81L23czxRgzNaAivSWHISRTspoTo56XCtQVsJPUjnFuSMmox5jNybGJEAz09k6kPedZnIou7pPidcBn5C4ztJ2kdiRrfqIGbsFQpr6OtgPACsk6za0QxIEkUZdZpwHsVgXGFo0bscTQj72LGTriWWWvjuAyDZryNGhGC7V/43VRwvkATmfVS6BpbyLjQwodkkTaGEoWybxL4rcyaN6g0jBlLy3lowQatwf3UFOul+J3EvgWsrkgi9dt9O2JQle8LReoL8gGnEntP4I37WJTN8Xy3bDM/ZBlMwq1K7B9yDjR7Ianud3ceuOALUWyocTsSe8Ac831MGOpzkBXTQCg01CBNZh+feygNCXffF3whitWIaC51FkMMGAh1jVOo65kURtDJQvg8DU/OlhDq/EL+hWEtmCyEz0TB9+7ThNtNMzd/92krFJku3KrEuTZwcUhjFno0hj/SbMd+DJ/yRUpEtyNxNpFj875U8bT70hZJ79hbboohNIELBXJvWlmIny/lqSzKmFa9o7L/XIySOd7N3uDJwn+0KbfQH2iEzwjzCP29FVJYrG9X0+livdsrxfAmJB1bQLg/IyywoMgh3K0m0p1tvM9KkQY8kiHahu7+nLfAWX2O67CSno5wFE+CQiR1vwXHWDpL2+GmNT7PsqLAWErLX4l7Znjmw6WHY7eHkktxxbNOIzQf4vA9M/z3PRk1MJA+Qnjh72xv823krTjXE0XWovC55L1roF2ZrbFSmd2vbuee/9HLcfIRuzlhj7mBwWwocf8hf/VEmEGVxzGE7oT81RNeRYT8qalIBbwRcg0xGyF/BexG7yHlX/jmWy6VFfJPFn71GxZyJ24i5ZOEkLt4ClK2kJD/fnzo3poaIfdc4cbvxxfopiJCl+ZtAkLuHcRdJxV/Lgb8LplQzO7vl8slv49/OtyOpBLPNgHfgRBtxUqZL5fZCnl3EN3ks004n0/DcfY5GgL7+DTsORdxO91HhFy5qSUwV8gJwfc/B530IkXIU0KJTIZywvBKOaQNi2lC+JTo8CxDKRLSAgpM3E2GUSG40ofeEKtYaMNvnXXPU4XgZ+7lPvviMEL40r6/mp8mBKbfovtq0kLwnOGynpsIPbMg4ZMT2rDdC3o+gSEEPb9UYhyVFQLXFF3280tBpb4DO693ECHoWHtotk8KIY0oujWqRAgp9d2s5whDUrdjF8aaUOB53qIb+CqEkMHUfZ4pBOx4J9cR/SeuJ5+gLyU0TTv50ivIWBqZC9OEgMTGuSqHNEQ2utVc11vA8gCI0DbHCw9jbbKkN2LumOYYsCzs5j1XH7LAbxir2fYZ8rPpPFjqpUcqZ4CGzBfa5mgS3BiFMJpPR/rmmZLjFeCpg+GMlCEEHRl2sLeeTCZrepPW/lMxno9Kks/6sk19OQ/9neQfTvPmk9vJ3MOQhAYn3tkp+I6SpyiI+EWAPb95BYWkT46ip/uCvzX1s1LDfZfwiL5n5injIxD2r0g2kvW+J/p809HCc4GP+GR8upbkCL8riEX0OxaeT2fxV3cwhTbV6aPVHMe3qLjDhb0rCFgKs4mBEnmL6awcjEhpQv8lgf6bLkbTWw9J67S0YYYhBK6dZhIDJWGuJ6vpaOZvVG1OKtCgM8B4tJwuJmv/X0Nep6X3Ubn3ruUR/U/1N+9dl4yI3no+n0/mNNaepyF/dViNLYh4NpMhhC7ZQIhhazjUwbaR2kdl33/IRTxwxDPuHCF0VeqIiIl0LVsIfjfZ0RBT5vpsIXjh7UiIeMKCyL8P+CiIrIswUwh+p/MxELHIO53h7+V+fKIr9F5ujnerPzbRnWYosoTF/j+DyJjqIcLi9T/hWsTxlRkeYXF4/MSMYRQi7ICPaDwWkd4IKyMstp3jJiLczhHkCYtt45iJCLEnQqiwWD9iIkKMdJtLeMRECBAiPNprEWXkanzCYrt2jJMG0vIGGbiw2DnCeRF7OdMEl5BkN8eWwOVkMvzCY8tR3cxcVEhYHBxTMZVZTYgKi6fQIfXgRIQz6kEJYfG8cRxrN9iDzBIiwmKxewwrcC5z0UmBsHhpPfZSMWIuG6oRFuvAnnooIvYAiZqUsFhsNZXsTAkFgk8SEsLic1gOdwAi1lJ3l5QLSTOCrkbVRJEGFBUWqzXQcQalQKylbGEfTEgfTAToqgqJGHMOodLC4lkf0FVVEUkHhRUSKoVk4rjONyohInfOO0WoEZJMdZhrlCci1xMYQRUJibGRZ5QkEh9Hln0AITFeWdljjgwRuWtJnwIhmTq62UZhInbnYhOEaiEZc1pGVmcVIiKM3vIUScxQIiTRGzbZBTI3kZ7/uxCeH6KhSkgaclBjIvmOFmFXWylpPj/UCUlUWzUrHQkmUt5bBVffPpQKSVQHDSdt4AEREcbeSimvqF5Iot3rG1aiLXOIiL5eZ9JT1zl3cQAhjXqv1WhGmUwiomcXvbc9icwsKw4kpNGp9lrXNep0DBIxItqey9Tmb99VFY2baXFAYRCd6sVlq3vVqBUcy90FRpq3nrx9d3FIWxAHF+7i7Kx9fl6vVqv1+vn5Wefgsm08nPCx4n/zXDAiyfKi/wAAAABJRU5ErkJggg=="
                        alt=""
                      />{" "}
                    </div>
                    <div className="ms-2">
                      <div className="light-grey fs-6">Thu</div>
                      <div className="text-grey fs-5">120000000</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div className="row">{/* lich */}</div>
          </div>
          <div className="col-lg-4">
            <div className="card h-auto card-xuatfile">
              <div className="pb-0 p-3">
                <div className="row">
                  <div className="col-7 d-flex align-items-center">
                    <h6 className="mb-0">Xuất file thống kê</h6>
                  </div>
                </div>
              </div>
              <div className="card-body p-3 pb-0">
                <ul className="list-group">
                  <li className="list-group-item border-0 d-flex justify-content-between ps-0 mb-2 border-radius-lg">
                    <div className="d-flex flex-column">
                      <h6 className="text-dark font-weight-bold text-sm">
                        Hoá đơn bán
                      </h6>

                      <div>
                        <div className="">
                          <span className="text-xs">Từ ngày </span>
                          <input
                            className="form-control border "
                            type="date"
                            id="start"
                            name="trip-start"
                            onChange={(e) =>
                              setTungay1(new Date(e.target.value))
                            }
                            value={tungay1.toISOString().split("T")[0]}
                          ></input>
                        </div>
                      </div>
                      <div>
                        <div className="">
                          <span className="text-xs">Đến ngày </span>
                          <input
                            className="form-control border "
                            type="date"
                            id="start"
                            name="trip-start"
                            onChange={(e) =>
                              setDenngay1(new Date(e.target.value))
                            }
                            value={denngay1.toISOString().split("T")[0]}
                          ></input>
                        </div>
                      </div>
                    </div>
                    <div className="d-flex align-items-center text-sm">
                      <button
                        className="btn btn-link text-dark display-1"
                        id="fileban"
                        onClick={xuatFileHoadon}
                      >
                        <h1>
                          <i class="bi bi-file-earmark-excel"></i>
                        </h1>
                      </button>
                    </div>
                  </li>
                  <li className="list-group-item border-0 d-flex justify-content-between ps-0 mb-2 border-radius-lg">
                    <div className="d-flex flex-column">
                      <h6 className="text-dark font-weight-bold text-sm">
                        Hoá đơn nhập
                      </h6>
                      <div>
                        <div className="">
                          <span className="text-xs">Từ ngày </span>
                          <input
                            className="form-control border "
                            type="date"
                            id="start"
                            name="trip-start"
                            onChange={(e) =>
                              setTungay2(new Date(e.target.value))
                            }
                            value={tungay2.toISOString().split("T")[0]}
                          ></input>
                        </div>
                      </div>
                      <div>
                        <div className="">
                          <span className="text-xs">Đến ngày </span>
                          <input
                            className="form-control border "
                            type="date"
                            id="start"
                            name="trip-start"
                            onChange={(e) =>
                              setDenngay2(new Date(e.target.value))
                            }
                            value={denngay2.toISOString().split("T")[0]}
                          ></input>
                        </div>
                      </div>
                    </div>
                    <div className="d-flex align-items-center text-sm">
                      <button
                        className="btn btn-link text-dark display-1"
                        id="filenhap"
                        onClick={xuatFilePhieunhap}
                      >
                        <h1>
                          <i class="bi bi-file-earmark-excel"></i>
                        </h1>
                      </button>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div className="row">
        <div className="col-md-7">
          <div className="card">
          <h6 className="card-header mb-0">Hoá đơn bán</h6>
            <div className="pb-0 px-3">
              <div className="row">
                <div className="btn-add-bill">
                  <a
                    href={() => false}
                    className="btn bg-gradient-dark mb-0 mt-4 "
                    onClick={() => showModal(1)}
                  >
                    <i class="bi bi-plus"></i> Thêm mới hoá đơn
                  </a>
                </div>
              </div>
            </div>

            <div className="card-body pt-4 p-3">
              <ul className="list-group">
                {billing !== undefined &&
                  billing.map((value, key) => {
                    return (
                      <BillItem
                        bill={value}
                        key={key}
                        handleSave={loadBill}
                      ></BillItem>
                    );
                  })}
              </ul>
            </div>
          </div>
        </div>
        <div className="col-md-5">
          <div className="card ">
          <h6 className="card-header">Phiếu nhập kho </h6>
            <div className="pb-0 px-3">
              <div className="row">
              <div className="btn-import-bill mt-4">
                  <a
                    href={() => false}
                    className="btn bg-gradient-dark"
                    onClick={() => showModal(2)}
                  >
                    <i class="bi bi-plus"></i> Thêm mới phiếu nhập
                  </a>
                </div>
                
              </div>
            </div>

            <div className="card-body pt-4 p-3">
              <ul className="list-group">
                {importBilling !== undefined &&
                  importBilling.map((value, key) => {
                    return (
                      <ImportItem
                        bill={value}
                        key={key}
                        handleSave={loadImport}
                      ></ImportItem>
                    );
                  })}
              </ul>
            </div>
          </div>
        </div>
      </div>
    </main>
  );
}
