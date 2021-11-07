import * as cartConst from "../constrants/cartConst";
import * as myToast from "../../../Common/helper/toastHelper";

const initialState = {
  cart: [],
};
const reducer = (state = initialState, action, history) => {
  switch (action.type) {
    case cartConst.ADD_TO_LOGIN: {

      history.push("/login");
      return { ...state };
    }
    case cartConst.ADD_TO_CART: {
      return { ...state };
    }
    case cartConst.ADD_TO_CART_SUCCESS: {
      const { data } = action.payload.data;
      const product = data.product;
      myToast.toastSucces("Thêm vào giỏ hàng thành công");
      return {
        
        cart: {...state, product},
      };
    }
    case cartConst.ADD_TO_CART_FAILED: {
      myToast.toastError("Thêm vào giỏ hàng thất bại");
      return { ...state };
      
    }
    default:
      return state;
  }
};
export default reducer;
