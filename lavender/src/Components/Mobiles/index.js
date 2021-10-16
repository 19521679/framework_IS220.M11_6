import React, { Component } from "react";

export default class index extends Component {
  state = { sapxep: "" };

  componentDidMount() {
      const {firm} =this.props;
    if (firm != null) {
      this.setState({ sapxep: this.props.firm });
    }
  }

  render() {
    return (
      <section>
        Đây là trang điện thoại
        {this.state.sapxep}
      </section>
    );
  }
}
