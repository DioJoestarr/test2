/* eslint-disable jsx-a11y/iframe-has-title */
import React, { useState } from "react";
import { ToastContainer, toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";
import { fetchPostContact } from "../../Services/services";
import { isEmail, isMessage, isName } from "../Validation/TestFormValue";

export default function Contact() {
  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [message, setMessage] = useState("");
  const nameOnchange = (e) => {
    setName(e.target.value);
  };
  const emailOnchange = (e) => {
    setEmail(e.target.value);
  };
  const messageOnchange = (e) => {
    setMessage(e.target.value);
  };
  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!isMessage(message) && !isName(name) && !isEmail(email)) {
      if (await fetchPostContact(name, email, message)) {
        toast.success("Your message has been sent successfully");
      }
    }
  };
  return (
    <div className="row no-gutters contact">
      <div className="col-md-7">
        <div className="contact-wrap w-100 p-md-5 p-4">
          <h3 className="mb-4">Contact Us</h3>
          <div id="form-message-warning" className="mb-4"></div>
          <form
            method="POST"
            onSubmit={handleSubmit}
            id="contactForm"
            name="contactForm"
            className="contactForm"
            noValidate=""
          >
            <div className="row">
              <div className="col-md-6">
                <div className="form-group">
                  <label className="label" htmlFor="name">
                    Full Name
                  </label>
                  <input
                    type="text"
                    className="form-control"
                    name="name"
                    id="name"
                    onChange={nameOnchange}
                    placeholder="Name"
                  />
                </div>
              </div>
              <div className="col-md-6">
                <div className="form-group">
                  <label className="label" htmlFor="email">
                    Email Address
                  </label>
                  <input
                    type="email"
                    className="form-control"
                    name="email"
                    id="email"
                    placeholder="Email"
                    onChange={emailOnchange}
                  />
                </div>
              </div>
              <div className="col-md-12">
                <div className="form-group">
                  <label className="label" htmlFor="#">
                    Message
                  </label>
                  <textarea
                    name="message"
                    className="form-control"
                    id="message"
                    cols="30"
                    rows="4"
                    placeholder="Message"
                    onChange={messageOnchange}
                  ></textarea>
                </div>
              </div>
              <div className="col-md-12">
                <div className="form-group">
                  <input
                    id="sendBtn"
                    type="submit"
                    className="btn btn-primary"
                    placeholder="Sending..."
                  />
                  <div className="submitting"></div>
                </div>
              </div>
            </div>
          </form>
        </div>
      </div>
      <div className="col-md-5 d-flex ">
        <iframe
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3110.4741324546612!2d106.78127815639414!3d10.814946385032917!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175275b3a69ce75%3A0xfc7063168fc12eaf!2zUXXhuq1uIDksIFRow6BuaCBwaOG7kSBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1646497755858!5m2!1svi!2s"
          width="400"
          height="400"
          loading="lazy"
        ></iframe>
      </div>
      <ToastContainer />
    </div>
  );
}
