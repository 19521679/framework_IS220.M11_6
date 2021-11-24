import axiosServices from "./axiosServices";
import {API_ENDPOINT} from "../../Common/constants/index";

    
export const findCustomerByBillId=(sohoadon)=>{
    return axiosServices.get(`${API_ENDPOINT}/tim-khachhang-theo-sohoadon?sohoadon=${sohoadon}`);
};
export const allKhachhang=()=>{
    return axiosServices.get(`${API_ENDPOINT}/khachhang`);
}

export const thayDoiThongTin=(data)=>{
    return axiosServices.post(`${API_ENDPOINT}/khachhang/thaydoi`, data);
}

export const findCustomerByCustomerId=(makhachhang)=>{
    return axiosServices.get(`${API_ENDPOINT}/tim-khachhang-theo-makhachhang?makhachhang=${makhachhang}`);
};

export const thayDoiSDT=(request)=>
{
    return axiosServices.put(`${API_ENDPOINT}/khachhang/thaydoi/sdt`, request)
}

export const thayDoiEmail=(request)=>
{
    return axiosServices.put(`${API_ENDPOINT}/khachhang/thaydoi/email`, request)
}