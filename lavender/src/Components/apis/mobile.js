import axiosServices from "./axiosServices";
import {API_ENDPOINT} from "../../Common/constants/index";

const url="/mobile";
    
export const mobile=()=>{
    return axiosServices.get(API_ENDPOINT+url);
};
export const mobileInfo=(query)=>{
    console.log("query"+API_ENDPOINT+query);
    return axiosServices.get(API_ENDPOINT+query);
};