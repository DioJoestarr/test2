import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import { toast } from "react-toastify";
import { fetchRegister } from "../../Services/services";
import {
  isConfirmPassword,
  isEmail,
  isName,
  isPassword,
} from "../Validation/TestFormValue";

export default function Register() {
  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [passWord, setPassWord] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const navigate = useNavigate();
  const nameOnchange = (e) => {
    setName(e.target.value);
  };
  const emailOnchange = (e) => {
    setEmail(e.target.value);
  };
  const passwordOnchange = (e) => {
    setPassWord(e.target.value);
  };
  const confirmPasswordOnchange = (e) => {
    setConfirmPassword(e.target.value);
  };
  const handleSubmit = async (e) => {
    e.preventDefault();
    if (
      !isName(name) &&
      !isEmail(email) &&
      !isPassword(passWord) &&
      !isConfirmPassword(passWord, confirmPassword)
    ) {
      const data = await fetchRegister(name, email, passWord, confirmPassword);
      if (data) {
        console.log(data);
        localStorage.setItem("token", data.token);
        toast.success(data.message);
        navigate("/");
      } else {
        toast.error("Register Failed");
      }
    }
  };
  return (
    <section
      className="h-100 h-custom register"
      style={{ backgroundColor: "rgb(143, 196, 183)", borderRadius: "10px" }}
    >
      <div className="py-5 h-100">
        <div className="row d-flex justify-content-center align-items-center">
          <div className="col-lg-8 col-xl-6 register-panel">
            <div className="card rounded-3">
              <div className="card-body p-4 p-md-5">
                <h3 className="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">
                  Registration Info
                </h3>
                <form className="px-md-2 form-register" onSubmit={handleSubmit}>
                  <label className="form-label" htmlFor="form3Example1q">
                    Name
                  </label>
                  <div className="form-outline mb-4">
                    <input
                      type="text"
                      id="form3Example1q"
                      className="form-control"
                      onChange={nameOnchange}
                    />
                  </div>
                  <div className="form-outline mb-4">
                    <label className="form-label" htmlFor="form3Example1q">
                      Email
                    </label>
                    <input
                      type="text"
                      id="form3Example1q"
                      className="form-control"
                      onChange={emailOnchange}
                    />
                  </div>
                  <div className="form-outline mb-4">
                    <label className="form-label" htmlFor="form3Example1q">
                      Password
                    </label>
                    <input
                      type="text"
                      id="form3Example1q"
                      className="form-control"
                      onChange={passwordOnchange}
                    />
                  </div>
                  <div className="form-outline mb-4">
                    <label className="form-label" htmlFor="form3Example1q">
                      Confirm Password
                    </label>
                    <input
                      type="text"
                      id="form3Example1q"
                      className="form-control"
                      onChange={confirmPasswordOnchange}
                    />
                  </div>
                  <button type="submit" className="btn btn-success btn-lg mb-1 submit-btn">
                    Submit
                  </button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
}
