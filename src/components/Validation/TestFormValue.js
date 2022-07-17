import { toast } from "react-toastify";
import Validation from "./Validation";

export const isPassword = (passWord) => {
  if (!passWord.trim().length) {
    return toast.error("Please write password");
  } else if (!Validation.passWordRegx.test(passWord)) {
    return toast.error("Password invalid");
  }
};
export const isConfirmPassword = (passWord, confirmPassword) => {
  if (!confirmPassword.trim().length) {
    return toast.error("Please write comfirm password");
  } else if (!(passWord === confirmPassword)) {
    return toast.error("Confirm Password invalid");
  }
};
export const isEmail = (email) => {
  if (!email.trim().length) {
    return toast.error("Please write email");
  } else if (!Validation.emailRegx.test(email)) {
    return toast.error("Email invalid");
  }
};
export const isName = (name) => {
  if (!name.trim().length) {
    return toast.error("Please write name");
  } else if (!Validation.nameRegx.test(name)) {
    return toast.error("Name invalid");
  }
};
export const isMessage = (message) => {
  if (!message.trim().length) {
    return toast.error("Please write message");
  }
};
