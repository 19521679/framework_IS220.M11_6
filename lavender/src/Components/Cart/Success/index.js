import React from 'react'
import "./style.css"
export default function Index(props) {
    return (
      <>
      {props.fire&&(
            <div className="success-cart z-index-3">
            <div className=" d-flex justify-content-center feliz">
             Happy new year <br></br> Mua hàng thành công</div>
            <div className="ano_novo">
              <span>202</span>
              <span className="seis">1</span>
              <span className="sete">2</span>
              <div className="balao" />
            </div>
            <div className="fogos">
              <div className="f1">
                <span><i /></span>
                <span><i /></span>
                <span><i /></span>
              </div>
              <div className="f2">
                <span><i /></span>
                <span><i /></span>
                <span><i /></span>
              </div>
              <div className="f3">
                <span><i /></span>
                <span><i /></span>
                <span><i /></span>
              </div>
              <div className="f4">
                <span><i /></span>
                <span><i /></span>
                <span><i /></span>
              </div>
            </div>
            <a href="https://twitter.com/cecelabomfim" className="author">Marcela Bomfim</a>
          </div>
      )}
      </>
      
    )
}
