import Home from "../../Components/Home.js";
import NotFoundPage from "./NotFoundPage.js";
import Mobiles from "../../Components/Mobiles/index.js";
import Computers from "../../Components/Computers/index.js";
import ExDevice from "../../Components/ExDevices/index.js";
import Services from "../../Components/Services/index.js";
import Cart from "../../Components/Cart";
import LMember from "../../Components/LMember";

const routes= [
  {
    path: '/',
    exact: true,
    main: ()=> <Home></Home>
  },
  {
    path: '/mobiles',
    exact: false,
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