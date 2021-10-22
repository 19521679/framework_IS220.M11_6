import * as registerApi from "../../apis/register";
import * as registerConst from "../constrants/registerConst";

export const postRegister = () => {
  return {
    type: registerConst.POST_REGISTER,
  };
};

export const postRegisterSucces = (data) => {
  console.log("Dang ky thanh cong");
  return {
    type: registerConst.POST_REGISTER_SUCCESS,
    payload: {
      data,
    },
  };
};

export const postRegisterFailed = (error) => {
  console.log("Dang ky khong thanh cong"+error);
  return {
    type: registerConst.POST_REGISTER_FAILED,
    payload: {
      error,
    },
  };
};

export const postRegisterReport = (res) => {
  return (dispatch) => {
    registerApi
      .register(res)
      .then((res) => {
        if (res.status===200) dispatch(postRegisterSucces(res));
        else dispatch(postRegisterFailed(res));
      })
      .catch((error) => {
        dispatch(postRegisterFailed(error));
      });
  };
};
