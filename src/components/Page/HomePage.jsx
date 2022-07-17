import React, { Component } from "react";

import Featured from "../Home/Featured";
import NewArrival from "../Home/NewArrivel";
import Slider from "../Home/Slider";
export class HomePage extends Component {
  render() {
    return (
      <div>
        <Slider />
        <NewArrival />
        <Featured />
      </div>
    );
  }
}
export default HomePage;