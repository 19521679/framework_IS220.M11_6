import axiosServices from "./axiosServices";
import { API_ENDPOINT } from "../../Common/constants/index";

export const loadDetailCartByCartId = (magiohang) => {
  return axiosServices.get(`${API_ENDPOINT}/chitietgiohang-bang-magiohang?magiohang=${magiohang}`);
};
