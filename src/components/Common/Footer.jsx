import React, { Component } from "react";

export default class Footer extends Component {
  render() {
    return (
      <footer id="footer" style={{ marginTop: "20px" }}>
        <div className="footer-widget">
          <div className="container">
            <div className="row">
              <div className="col-sm-2">
                <div className="single-widget">
                  <h2>Service</h2>
                  <ul className="nav nav-pills nav-stacked">
                    <li>
                      <a href="#">Online Help</a>
                    </li>
                    <li>
                      <a href="#">Contact Us</a>
                    </li>
                    <li>
                      <a href="#">Order Status</a>
                    </li>
                    <li>
                      <a href="#">Change Location</a>
                    </li>
                    <li>
                      <a href="#">FAQ’s</a>
                    </li>
                  </ul>
                </div>
              </div>
              <div className="col-sm-2">
                <div className="single-widget">
                  <h2>Quock Shop</h2>
                  <ul className="nav nav-pills nav-stacked">
                    <li>
                      <a href="#">T-Shirt</a>
                    </li>
                    <li>
                      <a href="#">Mens</a>
                    </li>
                    <li>
                      <a href="#">Womens</a>
                    </li>
                    <li>
                      <a href="#">Gift Cards</a>
                    </li>
                    <li>
                      <a href="#">Shoes</a>
                    </li>
                  </ul>
                </div>
              </div>
              <div className="col-sm-2">
                <div className="single-widget">
                  <h2>Policies</h2>
                  <ul className="nav nav-pills nav-stacked">
                    <li>
                      <a href="#">Policy</a>
                    </li>
                    <li>
                      <a href="#">Warranty</a>
                    </li>
                    <li>
                      <a href="#">Refund Policy</a>
                    </li>
                    <li>
                      <a href="#">Billing System</a>
                    </li>
                    <li>
                      <a href="#">Ticket System</a>
                    </li>
                  </ul>
                </div>
              </div>
              <div className="col-sm-2">
                <div className="single-widget">
                  <h2>About POST</h2>
                  <ul className="nav nav-pills nav-stacked">
                    <li>
                      <a href="#">About us</a>
                    </li>
                    <li>
                      <a href="#">Careers</a>
                    </li>
                    <li>
                      <a href="#">Store Location</a>
                    </li>
                    <li>
                      <a href="#">Affillate Program</a>
                    </li>
                    <li>
                      <a href="#">Copyright</a>
                    </li>
                  </ul>
                </div>
              </div>
              <div className="col-sm-3 col-sm-offset-1">
                <div className="single-widget">
                  <h2>About POST</h2>
                  <form action="#" className="searchform">
                    <input type="text" placeholder="Your email address" />
                    <button type="submit" className="btn btn-default">
                      <i className="fa fa-arrow-circle-o-right"></i>
                    </button>
                    <p>
                      Get the most recent updates from <br />
                      our site and be updated your self...
                    </p>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div className="footer-bottom">
          <div className="container">
            <div className="row">
              <p className="pull-left">
                Copyright © 2020 THERICH-SHOP Inc. All rights reserved.
              </p>
              <p className="pull-right">
                Designed by{" "}
                <span>
                  <a target="_blank" href="#">
                    Therichpost
                  </a>
                </span>
              </p>
            </div>
          </div>
        </div>
      </footer>
    );
  }
}
