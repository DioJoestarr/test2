import React, { useCallback, useEffect, useRef, useState } from "react";
import { Link, useNavigate, useSearchParams } from "react-router-dom";
import { useGlobalContext } from "../../Context/Context";
import { fetchUserData } from "../../Services/services";

export function Header({ session }) {
  const { loggedIn, login, logout } = useGlobalContext();
  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [avatar, setAvatar] = useState("");
  const [level, setLevel] = useState("");
  const [searchParams, setSearchParams] = useSearchParams();

  const navigate = useNavigate();
  useEffect(() => {
    const fetchApi = async () => {
      const data = await fetchUserData();
      if (data) {
        setName(data.name);
        setEmail(data.email);
        setAvatar(data.profile_photo_url);
        setLevel(data.level);
        login();
      }
    };
    fetchApi();
  }, [loggedIn]);
  function debounce(func, timeout = 300) {
    let timer;
    return (...args) => {
      clearTimeout(timer);
      timer = setTimeout(() => {
        func.apply(this, args);
      }, timeout);
    };
  }
  const handleSearch = (e) => {
    setSearchParams({ keyword: e.target.value });
  };
  const handleChange = debounce(handleSearch);
  return (
    <header id="header">
      <div className="header_top">
        <div className="container">
          <div className="row">
            <div className="col-sm-6">
              <div className="contactinfo">
                <ul className="nav nav-pills">
                  <li>
                    <Link to={""}>
                      <i className="fa fa-phone"></i> 1414141414
                    </Link>
                  </li>
                  <li>
                    <Link to={""}>
                      <i className="fa fa-envelope"></i> info@domain.com
                    </Link>
                  </li>
                </ul>
              </div>
            </div>
            <div className="col-sm-6">
              <div className="social-icons pull-right">
                <ul className="nav navbar-nav">
                  <li>
                    <Link to={""}>
                      <i className="fa fa-facebook"></i>
                    </Link>
                  </li>
                  <li>
                    <Link to={""}>
                      <i className="fa fa-twitter"></i>
                    </Link>
                  </li>
                  <li>
                    <Link to={""}>
                      <i className="fa fa-linkedin"></i>
                    </Link>
                  </li>
                  <li>
                    <Link to={""}>
                      <i className="fa fa-dribbble"></i>
                    </Link>
                  </li>
                  <li>
                    <Link to={""}>
                      <i className="fa fa-google-plus"></i>
                    </Link>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div className="header-middle">
        <div className="container">
          <div className="row">
            <div className="col-sm-4">
              <div className="logo pull-left item">
                <Link to={"/"}>
                  <h3>LeDaiShop</h3>
                </Link>
              </div>
            </div>
            <div className="col-sm-8">
              <div className="shop-menu pull-right">
                <ul className="nav navbar-nav">
                  <li>
                    <Link to="/cart">
                      <i className="fa fa-shopping-cart"></i> Cart
                    </Link>
                  </li>
                  {!loggedIn ? (
                    <>
                      <li>
                        <Link to="/login">
                          <i className="fa fa-lock"></i> Login
                        </Link>
                      </li>
                      <li>
                        <Link to="/register">
                          <i className="fa fa-sign-in"></i> Register
                        </Link>
                      </li>
                    </>
                  ) : (
                    <>
                      <li>
                        <Link
                          to="/profile"
                          state={{ name, avatar, email, level }}
                        >
                          <img src={avatar} className="user-avatar" alt="" />{" "}
                          Profile
                        </Link>
                      </li>
                      <li>
                        <Link to="/logout" onClick={logout}>
                          <i className="fa fa-sign-out"></i> Logout
                        </Link>
                      </li>
                    </>
                  )}
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div className="header-bottom">
        <div className="container">
          <div className="row">
            <div className="col-sm-9">
              <div className="navbar-header">
                <button
                  type="button"
                  className="navbar-toggle"
                  data-toggle="collapse"
                  data-target=".navbar-collapse"
                >
                  <span className="sr-only">Toggle navigation</span>
                  <span className="icon-bar"></span>
                  <span className="icon-bar"></span>
                  <span className="icon-bar"></span>
                </button>
              </div>
              <div className="mainmenu pull-left">
                <ul className="nav navbar-nav collapse navbar-collapse">
                  <li>
                    <Link to="/">Home</Link>
                  </li>
                  <li>
                    <Link to={"/product"}>Products</Link>
                  </li>
                  <li>
                    <Link to="/about">About us</Link>
                  </li>
                  <li>
                    <Link to="/policy">Policy</Link>
                  </li>
                  <li>
                    <Link to="/warranty">Warranty</Link>
                  </li>
                  <li>
                    <Link to="/contact">Contact</Link>
                  </li>
                </ul>
              </div>
            </div>
            <div className="col-sm-3">
              <div className="search_box pull-right">
                <input
                  type="search"
                  placeholder="Search"
                  onChange={handleChange}
                  onClick={() => navigate("/search")}
                  onBlur={(e) => (e.target.value = "")}
                />
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
  );
}

export default Header;
