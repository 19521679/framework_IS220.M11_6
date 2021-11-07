import * as loginApi from "../../apis/login";
import * as loginConst from "../constrants/loginConst";

export const postLogin = () => {
  return {
    type: loginConst.POST_LOGIN,
  };
};

export const postLoginSuccess = (data) => {
  return {
    type: loginConst.POST_LOGIN_SUCCESS,
    payload: {
      data,
    },
  };
};

export const postLoginFailed = (error) => {
  return {
    type: loginConst.POST_LOGIN_FAILED,
    payload: {
      error,
    },
  };
};

export const postLoginReport = (req) => {
  return (dispatch) => {
    loginApi
      .login(req)
      .then((res) => {
        if (res.status===200) dispatch(postLoginSuccess(res));
        else dispatch(postLoginFailed(res));
      })
      .catch((error) => {
        dispatch(postLoginFailed(error));
      });
  };
};
