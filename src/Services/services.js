import AppUrl from "../../src/components/Api/Apiurl";
import axios from "axios";
import { toast } from "react-toastify";
export const fetchAllSiteInfo = async () => {
  try {
    const { data } = await axios.get(AppUrl.AllSiteInfo);
    return data;
  } catch (error) {
    return error;
  }
};
export const fetchProductsByRemark = async (remark) => {
  try {
    const { data } = await axios.get(AppUrl.ProductsByRemark + "/" + remark);
    return data;
  } catch (error) {
    console.log(error);
    return false;
  }
};
export const fetchProductsByCategory = async (category) => {
  try {
    const { data } = await axios.get(
      AppUrl.ProductsByCategory + `/${category}`
    );
    return data;
  } catch (error) {
    return error;
  }
};

export const fetchAllCategories = async () => {
  try {
    const { data } = await axios.get(AppUrl.AllCategories);
    return data;
  } catch (error) {
    return error;
  }
};
export const fetchAllBrands = async () => {
  try {
    const { data } = await axios.get(AppUrl.AllBrands);
    return data;
  } catch (error) {
    return false;
  }
};
export const fetchProductsByBrand = async (brand) => {
  try {
    const { data } = await axios.get(AppUrl.ProductsByBrand + `/${brand}`);
    return data;
  } catch (error) {
    console.log(error.name);
    console.log(error.message);
  }
};
export const fetchPostContact = async (name, email, message) => {
  let bodyFormData = new FormData();
  bodyFormData.append("name", name);
  bodyFormData.append("email", email);
  bodyFormData.append("message", message);
  try {
    const { data } = await axios.post(AppUrl.PostContact, bodyFormData);
    return data;
  } catch (error) {
    return error;
  }
};
export const fetchProductsBySubCategory = async (subcategory) => {
  try {
    const { data } = await axios.get(
      AppUrl.ProductsBySubCategory + `/${subcategory}`
    );
    return data;
  } catch (error) {
    return error;
  }
};
export const fetchAllSliders = async () => {
  try {
    const { data } = await axios.get(AppUrl.AllSliders);
    return data;
  } catch (error) {
    return error;
  }
};
export const fetchProductDetail = async (id) => {
  try {
    const { data } = await axios.get(AppUrl.ProductDetail + `/${id}`);
    return data;
  } catch (error) {
    console.log(error);
    return false;
  }
};
export const fetchProductBySearch = async (key) => {
  try {
    const { data } = await axios.get(AppUrl.Search + `/${key}`);
    return data;
  } catch (error) {
    return false;
  }
};
export const fetchLogin = async (email, password) => {
  try {
    const { data } = await axios.post(AppUrl.Login, {
      email: email,
      password: password,
    });

    return data;
  } catch (error) {
    console.log(error);
  }
};
export const fetchForgetPassword = async (email) => {
  try {
    const res = await axios.post(AppUrl.ForgetPassword, {
      email: email,
    });
    return res.data.message;
  } catch (error) {
    return error;
  }
};
export const fetchRegister = async (
  name,
  email,
  password,
  password_confirmation
) => {
  try {
    const { data } = await axios.post(AppUrl.Register, {
      name: name,
      email: email,
      password: password,
      password_confirmation: password_confirmation,
    });
    localStorage.setItem("token", data.token);
    return data;
  } catch (error) {
    console.log(error);
    return false;
  }
};
export const fetchResetPassword = async (
  pin,
  email,
  password,
  passwordConfirm
) => {
  try {
    const { data } = await axios.post(AppUrl.ResetPassword, {
      token: pin,
      email: email,
      password: password,
      password_confirmation: passwordConfirm,
    });
    return data.message;
  } catch (error) {
    return false;
  }
};
export const fetchUserData = async () => {
  try {
    if (localStorage.getItem("token")) {
      const config = {
        headers: {
          Authorization: `Bearer ${localStorage.getItem("token")}`,
        },
      };
      const result = await axios.get(AppUrl.UserData, config);
      if (result.data) {
        return result.data;
      } else {
        return result.data.message;
      }
    }
  } catch (error) {
    return false;
  }
};
export const fetchOrderList = async (userId) => {
  try {
    if (localStorage.getItem("token")) {
      const token = localStorage.getItem("token");
      const config = {
        params: { user_id: userId },
        headers: {
          Authorization: `Bearer ${token}`,
        },
      };
      console.log(config);
      const { data } = await axios.post(AppUrl.OrderListByUser, config);

      return data;
    }
  } catch (error) {
    return false;
  }
};
