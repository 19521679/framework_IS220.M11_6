import axiosServices from "./axiosServices";
import {API_ENDPOINT} from "../../Common/constants/index";

export const trademark=(maloai)=>{
    return axiosServices.get(`${API_ENDPOINT}/thuonghieu?loai=${maloai}`);
};

export const AllTrademark=()=>{
    return axiosServices.get(`${API_ENDPOINT}/thuonghieu`);
};

export const thayDoiThongTin=(data)=>{
    return axiosServices.post(`${API_ENDPOINT}/thuonghieu/thaydoi`, data);
};