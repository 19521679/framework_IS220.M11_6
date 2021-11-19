import axiosServices from "./axiosServices";
import {API_ENDPOINT} from "../../Common/constants/index";

    
export const findCustomerByBillId=(sohoadon)=>{
    return axiosServices.get(`${API_ENDPOINT}/tim-khachhang-theo-sohoadon?sohoadon=${sohoadon}`);
};
export const allKhachhang=()=>{
    return axiosServices.get(`${API_ENDPOINT}/khachhang`);
}