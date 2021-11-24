import axiosServices from "./axiosServices";
import {API_ENDPOINT} from "../../Common/constants/index";
  
export const dungluong=(url)=>{
    return axiosServices.get(API_ENDPOINT+url);
};

export const mausac=(url)=>{
    return axiosServices.get(API_ENDPOINT+url);
};

export const xemgiatheodungluongvamausac=(request)=>{
    return axiosServices.get(`${API_ENDPOINT}/${request.loai}/${request.hang}/${request.dong}/${request.sanpham}/xemgia?dungluong=${request.dungluong}&mausac=${request.mausac}`);
};

export const xemgiatheomasanpham=(masanpham) => {
    return axiosServices.get(`${API_ENDPOINT}/xem-gia-theo-masanpham?masanpham=${masanpham}`);
}