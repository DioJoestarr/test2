import React, { useEffect, useState } from "react";
import { fetchAllSliders } from "../../Services/services";

function Slider() {
  const [sliders, setSliders] = useState([]);
  useEffect(() => {
    const fetchApi = async () => {
      setSliders(await fetchAllSliders());
    };
    fetchApi();
  }, []);
  return (
    <section id="slider">
      <div className="container">
        <div className="row">
          <div className="col-sm-12">
            <div
              id="slider-carousel"
              className="carousel slide"
              data-ride="carousel"
            >
              <ol className="carousel-indicators">
                <li
                  data-target="#slider-carousel"
                  data-slide-to="0"
                  className=""
                ></li>
                <li
                  data-target="#slider-carousel"
                  data-slide-to="1"
                  className=""
                ></li>
                <li
                  data-target="#slider-carousel"
                  data-slide-to="2"
                  className=""
                ></li>
              </ol>
              <div className="carousel-inner">
                {sliders &&
                  sliders.map((slider, index) => {
                    return (
                      <div
                        className={index === 0 ? "item active" : "item"}
                        key={slider.id}
                      >
                        <img
                          src={slider.slider_img}
                          className="girl img-responsive"
                          alt=""
                        />
                      </div>
                    );
                  })}
              </div>
              <a
                href="#slider-carousel"
                className="left control-carousel hidden-xs"
                data-slide="prev"
              >
                <i className="fa fa-angle-left"></i>
              </a>
              <a
                href="#slider-carousel"
                className="right control-carousel hidden-xs"
                data-slide="next"
              >
                <i className="fa fa-angle-right"></i>
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}

export default Slider;
