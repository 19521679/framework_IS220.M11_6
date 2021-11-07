import axiosServices from "./axiosServices";
import {API_ENDPOINT} from "../../Common/constants/index";

const url="/cart";
    
export const cart=()=>{
    return axiosServices.get(API_ENDPOINT+url);
};
export const addToCart=(data)=>{
    console.log("data"+JSON.stringify(data));
    return axiosServices.post(API_ENDPOINT+url,data);
};
