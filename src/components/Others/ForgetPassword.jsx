import React, { useState } from "react";
import { toast } from "react-toastify";
import { fetchForgetPassword } from "../../Services/services";
import { isEmail } from "../Validation/TestFormValue";

export default function ForgetPassword() {
  const [email, setEmail] = useState("");
  const emailOnChange = (e) => {
    setEmail(e.target.value);
  };
  const handleSubmit = (e) => {
    e.preventDefault();
    if (!isEmail(email)) {
      (async () => {
        const data = await fetchForgetPassword(email);
        if (data) {
          toast.success(data);
        } else {
          toast.error("Email not found");
        }
      })();
    }
  };
  return (
    <div className="row">
      <div className="col-md-4 col-xs-12"></div>
      <div className="col-md-4 col-xs-12">
        <form className="onboardForm" onSubmit={handleSubmit}>
          <h4 className="section-title-login"> FORGET PASSWORD ? </h4>
          <input
            className="m-2"
            type="email"
            placeholder="Enter Your Email"
            onChange={emailOnChange}
          />
          <button type="submit" className="btn btn-success m-2 ">
            {" "}
            Reset Password{" "}
          </button>
        </form>
      </div>
      <div className="col-md-4 col-xs-12"></div>
    </div>
  );
}
