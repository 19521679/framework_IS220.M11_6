import axiosServices from "./axiosServices";
import {API_ENDPOINT} from "../../Common/constants/index";



export const AllBaohanh=()=>{
    return axiosServices.get(`${API_ENDPOINT}/baohanh`);
};

