import * as cartApi from "../../apis/cart";
import * as cartConst from "../constrants/cartConst";

export const addToCart = (history) => {
  return {
    type: cartConst.ADD_TO_CART,
    history: history,
  };
};

export const addToCartSuccess = (data) => {
  return {
    type: cartConst.ADD_TO_CART_SUCCESS,
    payload: {
      data,
    },
  };
};

export const addToCartFailed = (error) => {
  return {
    type: cartConst.ADD_TO_CART_FAILED,
    payload: {
      error,
    },
  };
};

export const addToLogin = () => {
  return {
    type: cartConst.ADD_TO_LOGIN,
    payload: {},
  };
};

export const addToCartReport = (oldreq, history) => {
  console.log(oldreq);
  var req = {
    email: oldreq.email,
    password: oldreq.password,
    masanpham: oldreq.product.masanpham,
  };
  if (localStorage.setItem("hasLogined", false))
    return (dispatch) => {
      dispatch(addToLogin(history));
    };
  else {
    return (dispatch) => {
      cartApi
        .addToCart(req)
        .then((res) => {
          if (res.status === 200) dispatch(addToCartSuccess(res));
          else dispatch(addToCartFailed(res));
        })
        .catch((error) => {
          dispatch(addToCartFailed(error));
        });
    };
  }
};

/* Xem gio hang */
export const loadCart = () => {
  return {
    type: cartConst.LOAD_CART
  };
};

export const loadCartSuccess = (res) => {
  return {
    type: cartConst.LOAD_CART_SUCCESS,
    payload: {
      data: res.data
    },
  };
};

export const loadCartFailed = (error) => {
  return {
    type: cartConst.LOAD_CART_FAILED,
    payload: {
      error,
    },
  };
};

export const loadCartReport = (email, password) => {
  let request = { email: email, password: password };
  return (dispatch) => {
    cartApi
      .loadCart(request)
      .then((res) => {
        if (res.status === 200) dispatch(loadCartSuccess(res));
        else if (res.status===404) dispatch(loadCart(res));
        else dispatch(loadCartFailed(res));
      })
      .catch((error) => {
        dispatch(loadCartFailed(error));
      });
  };
};
