import Home from "../../Components/Home.js";
import NotFoundPage from "./NotFoundPage.js";
import Mobile from "../../Components/Mobile";
import Computer from "../../Components/Computer";
import ExDevice from "../../Components/ExDevice";
import Service from "../../Components/Service";
import Cart from "../../Components/Cart";
import LMember from "../../Components/Accounts/LMember.js";
import Login from "../../Components/Accounts/Login.js";
import Register from "../../Components/Accounts/Register.js";
import Product from "../../Components/Product";
import Admin from "../../Components/Admin";
const routes= [
  {
    path: '/',
    exact: true,
    main: ()=> <Home></Home>
  },
  {
    path: '/:loai/:hang/:dong/:sanpham',
    exact: false,
    main: ({match})=><Product match={match}></Product>
  },
  // {
  //   path: '/mobile/iphone',
  //   exact: true,
  //   main: ()=><Mobile firm="iphone"></Mobile>
  // },
  // {
  //   path: '/mobile/samsung',
  //   exact: true,
  //   main: ()=><Mobile firm="samsung"></Mobile>
  // },
  // {
  //   path: '/mobile/oppo',
  //   exact: true,
  //   main: ()=><Mobile firm = "oppo"></Mobile>
  // },
  // {
  //   path: '/mobile/vivo',
  //   exact: true,
  //   main: ()=><Mobile firm= "vivo"></Mobile>
  // },
  // {
  //   path: '/mobile/xiaomi',
  //   exact: true,
  //   main: ()=><Mobile firm= "xiaomi"></Mobile>
  // },
  {
    path: '/mobile',
    exact: true,
    main: ()=><Mobile></Mobile>
  },
  
  {
    path: '/computer',
    exact: false,
    main: ()=><Computer></Computer>
  },
  {
    path: '/exdevice',
    exact: false,
    main: ()=><ExDevice></ExDevice>
  },
  {
    path: '/service',
    exact: false,
    main: ()=><Service></Service>
  },
  {
    path: '/cart',
    exact: false,
    main: ()=><Cart></Cart>
  },
  {
    path: '/lmember',
    exact: false,
    main: ()=><LMember></LMember>
  },
  {
    path: '/login',
    exact: false,
    main: ()=><Login></Login>
  },
  {
    path: '/register',
    exact: false,
    main: ()=><Register></Register>
  },
  {
    path: '/mobile/:productname/product',
    exact: false,
    main: ({match})=><Product match={match}></Product>
  },
  {
    path: '/admin',
    exact: false,
    main: ()=><Admin></Admin>
  },
  
  // {
  //   path: '/product/add',
  //   exact: false,
  //   main: ({history})=><ProductActionPage history={history}></ProductActionPage>
  // },
  // {
  //   path: '/products/:id/edit',
  //   exact: false,
  //   main: ({match,history})=><ProductActionPage match ={match} history={history}></ProductActionPage>
  // },
  {
    path: '/',
    exact: true,
    main: ()=> <Home></Home>
  },
  {
    path: '',
    exact: false,
    main: ()=><NotFoundPage></NotFoundPage>
  }
  
];
export default routes;