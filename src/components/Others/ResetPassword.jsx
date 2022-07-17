import React, { useState } from "react";
import { toast } from "react-toastify";
import { fetchResetPassword } from "../../Services/services";
import { isEmail, isPassword } from "../Validation/TestFormValue";
export default function ResetPassword() {
  const [email, setEmail] = useState("");
  const [password, setPassWord] = useState("");
  const [passwordConfirm, setPassWordConfirm] = useState("");
  const [pin, setPin] = useState("");
  const emailOnchange = (e) => {
    setEmail(e.target.value);
  };
  const pinOnchange = (e) => {
    setPin(e.target.value);
  };
  const passWordOnchange = (e) => {
    setPassWord(e.target.value);
  };
  const newPasswordOnchange = (e) => {
    setPassWordConfirm(e.target.value);
  };
  const handleSubmit = (e) => {
    e.preventDefault();
    if (
      !isEmail(email) &&
      !isPassword(password) &&
      !isPassword(passwordConfirm)
    ) {
      const fetchApi = async () => {
        const data = await fetchResetPassword(
          pin,
          email,
          password,
          passwordConfirm
        );
        if (data) {
          toast.success(data);
        } else {
          toast.error("Something went wrong");
        }
      };
      fetchApi();
    }
  };
  return (
    <div className=" row text-center">
      <div className="d-flex justify-content-center col-md-3 col-sm-12"></div>
      <div className="d-flex justify-content-center col-md-6 col-sm-12">
        <form className="onboardForm" id="fromreset" onSubmit={handleSubmit}>
          <h4 className="section-title-login"> RESET PASSWORD </h4>
          <input
            type="text"
            placeholder="Enter Your Pin Code"
            onChange={pinOnchange}
          />
          <input
            className="form-control m-2"
            type="email"
            placeholder="Enter Your Email"
            onChange={emailOnchange}
          />
          <input
            className="form-control m-2"
            type="password"
            placeholder="Your New Password"
            onChange={passWordOnchange}
          />
          <input
            className="form-control m-2"
            type="password"
            placeholder="Confirm Your Password"
            onChange={newPasswordOnchange}
          />
          <button
            type="submit"
            className="btn btn-success m-2 "
            onClick={handleSubmit}
          >
            Reset Password
          </button>
        </form>
      </div>
      <div className="d-flex justify-content-center col-md-3 col-sm-12"></div>
    </div>
  );
}
