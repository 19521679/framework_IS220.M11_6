import Home from "../../Components/Home.js";
import NotFoundPage from "./NotFoundPage.js";
import Mobiles from "../../Components/Mobiles.js";
import Computers from "../../Components/Computers.js";
import ExDevice from "../../Components/ExDevices.js";
import Services from "../../Components/Services.js";
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