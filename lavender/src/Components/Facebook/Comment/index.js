import React, { Component } from 'react';
import { FacebookProvider, Messengers, Comments } from 'react-facebook';
import * as myConst from "../../../Common/constants/index";

function Comment(props) {
  return (
    // <div class="fb-comments" data-href={props} data-width="100%" data-numposts="5"></div>

      <FacebookProvider appId="442858464151966">
        <Comments  href={myConst.CLIENT_ENDPOINT} />
      </FacebookProvider>
    // 
  );
}
export default Comment;