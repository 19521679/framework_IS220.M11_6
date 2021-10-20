import * as loginApi from "../../apis/login";
import * as loginConst from "../constrants/loginConst";

export const postLogin = () => {
  return {
    type: loginConst.POST_LOGIN,
  };
};

export const postLoginSucces = (data) => {
  console.log("Dang nhap thanh cong");
  return {
    type: loginConst.POST_LOGIN_SUCCESS,
    payload: {
      data,
    },
  };
};

export const postLoginFailed = (error) => {
  console.log("Dang nhap khong thanh cong");
  return {
    type: loginConst.POST_LOGIN_FAILED,
    payload: {
      error,
    },
  };
};

export const postLoginReport = (res) => {
  return (dispatch) => {
    loginApi
      .login(res)
      .then((res) => {
        if (res.status===200) dispatch(postLoginSucces(res));
        else dispatch(postLoginFailed(res));
      })
      .catch((error) => {
        dispatch(postLoginFailed(error));
      });
  };
};
