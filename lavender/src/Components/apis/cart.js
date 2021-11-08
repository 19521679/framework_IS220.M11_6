import axiosServices from "./axiosServices";
import { API_ENDPOINT } from "../../Common/constants/index";

export const loadCart = (request) => {
  const url = "/cart";
  console.log(`${API_ENDPOINT}${url}?email=${request.email}&password=${request.password}`);
  return axiosServices.get(`${API_ENDPOINT}${url}?email=${request.email}&password=${request.password}`);
};
export const addToCart = (data) => {
    const url="/add-to-cart";
  return axiosServices.post(API_ENDPOINT + url, data);
};
