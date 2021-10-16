import Home from "../../Components/Home.js";
import NotFoundPage from "./NotFoundPage.js";
import Mobiles from "../../Components/Mobiles";
import Computers from "../../Components/Computers";
import ExDevice from "../../Components/ExDevices";
import Services from "../../Components/Services";
import Cart from "../../Components/Cart";
import LMember from "../../Components/LMember";
import Login from "../../Components/Accounts/Login.js";

const routes= [
  {
    path: '/',
    exact: true,
    main: ()=> <Home></Home>
  },
  // {
  //   path: '/mobiles/:firm',
  //   exact: true,
  //   main: ({match})=><Mobiles match={match}></Mobiles>
  // },
  {
    path: '/mobiles/iphone',
    exact: true,
    main: ()=><Mobiles firm="iphone"></Mobiles>
  },
  {
    path: '/mobiles/samsung',
    exact: true,
    main: ()=><Mobiles firm="samsung"></Mobiles>
  },
  {
    path: '/mobiles/oppo',
    exact: true,
    main: ()=><Mobiles firm = "oppo"></Mobiles>
  },
  {
    path: '/mobiles/vivo',
    exact: true,
    main: ()=><Mobiles firm= "vivo"></Mobiles>
  },
  {
    path: '/mobiles/xiaomi',
    exact: true,
    main: ()=><Mobiles firm= "xiaomi"></Mobiles>
  },
  {
    path: '/mobiles',
    exact: true,
    main: ()=><Mobiles></Mobiles>
  },
  
  {
    path: '/computers',
    exact: false,
    main: ()=><Computers></Computers>
  },
  {
    path: '/exdevices',
    exact: false,
    main: ()=><ExDevice></ExDevice>
  },
  {
    path: '/services',
    exact: false,
    main: ()=><Services></Services>
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