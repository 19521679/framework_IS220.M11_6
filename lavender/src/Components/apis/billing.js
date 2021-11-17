import axiosServices from "./axiosServices";
import {API_ENDPOINT} from "../../Common/constants/index";


    
export const twentyhoadon=()=>{
    const url="/twenty-hoadon";
    return axiosServices.get(API_ENDPOINT+url);
};
export const processingBilling=()=>{
    const url="/hoa-don-dang-xu-ly";
    return axiosServices.get(API_ENDPOINT+url);
}
export const doanhthutheothang=(thang, nam)=>{
    return axiosServices.get(`${API_ENDPOINT}/doanh-thu-theo-thang?thang=${thang}&nam=${nam}`);
};
export const importBilling=()=>{
    const url="/phieu-nhap-san-pham";
    return axiosServices.get(API_ENDPOINT+url);
}
export const addBilling=(data)=>{
    const url="/them-moi-hoa-don";
    return axiosServices.post(API_ENDPOINT+url,data);
}