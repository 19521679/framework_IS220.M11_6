import React, { Component} from 'react';
import { FacebookProvider, Comments, Messengers } from 'react-facebook';
import * as myConst from "../../../Common/constants/index";

function Messenger ()  {
    
    var myAppId="229120639337066";
    return (
      <FacebookProvider appId={myAppId}>
        <Messengers  href={myConst.CLIENT_ENDPOINT} />
      </FacebookProvider>
    );
}
export default Messenger;