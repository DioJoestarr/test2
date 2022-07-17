import React, { useState } from "react";
import { Link, useNavigate } from "react-router-dom";
import {  toast } from "react-toastify";
import { useGlobalContext } from "../../Context/Context";
import { fetchLogin } from "../../Services/services";
import { isEmail, isPassword } from "../Validation/TestFormValue";

export default function Login() {
  const [email, setEmail] = useState("");
  const [passWord, setPassWord] = useState("");
  const { login } = useGlobalContext();
  const navigate = useNavigate();
 
  const emailOnchange = (e) => {
    setEmail(e.target.value);
  };
  const passWordOnchange = (e) => {
    setPassWord(e.target.value);
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!isEmail(email) && !isPassword(passWord)) {
      const data = await fetchLogin(email, passWord);
      if (data) {
        localStorage.setItem("token", data.token);
        login();
        toast.success(data.message);
        navigate("/");
      } else {
        toast.error("Login Failed");
      }
    }
  };
  return (
    <div className="formlogin row">
      <div className=" ">
        <h2 className="text-center"> LOGIN</h2>
        <form onSubmit={handleSubmit}>
          <div className="form-outline mb-4">
            <label className="form-label" htmlFor="form3Example3">
              Email address
            </label>
            <input
              type="email"
              id="form3Example3"
              className="form-control form-control-lg"
              placeholder="Enter a valid email address"
              onChange={emailOnchange}
            />
          </div>
          <div className="form-outline mb-3">
            <label className="form-label" htmlFor="form3Example4">
              Password
            </label>
            <input
              type="password"
              id="form3Example4"
              className="form-control form-control-lg"
              placeholder="Enter password"
              onChange={passWordOnchange}
            />
          </div>
          <div className="d-flex justify-content-between align-items-center">
            <div className="form-check mb-0">
              <input
                className="form-check-input me-2"
                type="checkbox"
                id="form2Example3"
                value="true"
              />
              <label className="form-check-label" htmlFor="form2Example3">
                Remember me
              </label>
            </div>
            <Link className="text-body" to={"/forget-password"}>
              Forgot password?
            </Link>
          </div>
          <div className="text-center text-lg-start mt-4 pt-2">
            <button
              type="submit"
              className="btn btn-primary btn-lg"
              style={{ paddingLeft: "2.5rem", paddingRight: "2.5rem" }}
            >
              Login
            </button>
            <p className="small fw-bold mt-2 pt-1 mb-0">
              Don't have an account?<Link to={"/register"}>Register</Link>
            </p>
          </div>
        </form>
      </div>
    </div>
  );
}
