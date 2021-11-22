import axiosServices from "./axiosServices";
import {API_ENDPOINT} from "../../Common/constants/index";

    
export const findProductByBillId=(sohoadon)=>{
    return axiosServices.get(`${API_ENDPOINT}/tim-sanpham-theo-sohoadon?sohoadon=${sohoadon}`);
};
    
export const findProductById=(masanpham)=>{
    return axiosServices.get(`${API_ENDPOINT}/tim-sanpham-theo-masanpham?masanpham=${masanpham}`);
};