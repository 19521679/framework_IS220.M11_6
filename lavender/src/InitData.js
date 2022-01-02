import React, { useEffect } from "react";
import { useDispatch } from "react-redux";
import * as loginAct from "./Components/redux/actions/loginAct";
import Cookies from "universal-cookie";
import * as accessApi from "./Components/apis/access";
import * as myToast from "./Common/helper/toastHelper";

const publicIp = require("public-ip");
const cookie = new Cookies();


export default function InitData() {
  const dispatch = useDispatch();
  useEffect(() => {
    (async ()=>{
      var ip = await publicIp.v4();
      const refreshtoken = cookie.get("refreshtoken");
    
      if (refreshtoken === undefined || refreshtoken === "") {
        accessApi.truycapAndanh(ip)
        .then(success =>{
        })
        .catch(error =>console.error(error))
      }
      else{
        myToast.toastLoading("Đang tiến hành đăng nhập", 3000);
        dispatch(loginAct.postRefreshReport(refreshtoken, ip));
      }
      
    })()

  }, [dispatch]);
  return <div></div>;
}
