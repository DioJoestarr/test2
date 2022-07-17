import { useEffect, useState } from "react";
import { fetchUserData } from "../../Services/services";
import { toast } from "react-toastify";

import {
  DecreaseQuantity,
  DeleteCart,
  IncreaseQuantity,
  SetCart,
  UpdateCart,
} from "../../store/actions/actions";
import { store } from "../../store/store";
import { isEmail, isName } from "../Validation/TestFormValue";

export default function Cart() {
  const [cart, setCart] = useState([]);
  const [id, setId] = useState(0);
  const [numberPhone, setNumberPhone] = useState("");
  const [email, setEmail] = useState("");
  const [address, setAddress] = useState("");
  const [name, setName] = useState("");
  const [quantity, setQuantity] = useState(0);
  const [numberCart, setNumberCart] = useState(0);
  let totalPrice = 0;
  let totalItem = 0;
  useEffect(() => {
    loadDataCart();
    async function fetchApi() {
      const data = await fetchUserData();
      setId(data.id);
      setEmail(data.email);
      setName(data.name);
    }
    if (localStorage.getItem("cart_daishop")) {
      const cartdata = JSON.parse(localStorage.getItem("cart_daishop"));
      store.dispatch(SetCart(cartdata));
    }
    fetchApi();
  }, []);
  store.subscribe(() => {
    loadDataCart();
  });
  const loadDataCart = () => {
    const { carts, numberCart } = store.getState().cart;
    setCart(carts);
    setNumberCart(numberCart);
  };
  const handleChange = (e) => {
    switch (e.target.name) {
      case "numberPhone":
        if (!isName(e.target.value)) setNumberPhone(e.target.value);
        break;
      case "email":
        setEmail(e.target.value);
        break;
      case "address":
        setAddress(e.target.value);
        break;
      case "name":
        setName(e.target.value);
        break;
      default:
        break;
    }
  };

  return (
    <div className="container">
      <div style={{ display: "block" }}>
        <div className="section-title text-center mt-55 mb-55">
          <h2>Product Cart List</h2>
        </div>
        <div className="row">
          {cart?.map((item, index) => {
            totalPrice += item.quantity * item.unit_price;
            totalItem += item.quantity;
            return (
              <div
                className="p-1 col-lg-12 col-md-12 col-sm-12 col-12"
                key={item.id}
              >
                <div className="card">
                  <div className="card-body">
                    <div className="row">
                      <div className="col-lg-3 col-md-3 col-sm-6 col-6">
                        <img
                          src={item.image}
                          style={{
                            width: "120px",
                            height: "120px",
                            margin: "5px",
                          }}
                          alt=""
                        />
                      </div>
                      <div className="col-lg-5 col-md-5 col-sm-6 col-6">
                        <h5 className="product-name">{item.name}</h5>
                        <h5>Số lượng: {item.quantity}</h5>
                        <h4>
                          {item.unit_price} x {item.quantity} =
                          {(item.quantity * item.unit_price).toLocaleString(
                            "it-IT",
                            { style: "currency", currency: "VND" }
                          )}
                        </h4>
                      </div>
                      <div className="col-lg-2 col-md-2 col-sm-6 col-6">
                        <input
                          className="form-control text-center"
                          type="number"
                          placeholder={item.quantity}
                          min={1}
                          onChange={(e) => {
                            e.stopPropagation();
                            store.dispatch(
                              UpdateCart({
                                id: item.id,
                                quantity: parseInt(e.target.value),
                              })
                            );
                          }}
                        />
                      </div>
                      <div className="col-lg-2 col-md-2 col-sm-6 col-6">
                        <button
                          type="button"
                          className="btn site-btn"
                          onClick={() => {
                            store.dispatch(IncreaseQuantity(item.id));
                            setQuantity(item.quantity);
                          }}
                        >
                          <i className="fa fa-plus"></i>{" "}
                        </button>
                        <button
                          type="button"
                          className="btn site-btn"
                          onClick={() => {
                            if (item.quantity > 1) {
                              store.dispatch(DecreaseQuantity(item.id));
                              setQuantity(item.quantity);
                            } else {
                              toast.error("Số lượng phải lớn hơn 0");
                            }
                          }}
                        >
                          <i className="fa fa-minus"></i>{" "}
                        </button>
                        <button
                          type="button"
                          onClick={() => {
                            store.dispatch(DeleteCart(index));
                          }}
                          className="btn site-btn"
                        >
                          <i className="fa fa-trash"></i> Remove{" "}
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            );
          })}
        </div>
        <div>
          <div className="col-lg-8 col-md-8 col-sm-6 col-6 "></div>
          <div className="col-lg-4 col-md-4 col-sm-6 col-6 ">
            <h4> Total Item = {totalItem}</h4>
            <h4>
              Total Price ={" "}
              {totalPrice.toLocaleString("it-IT", {
                style: "currency",
                currency: "VND",
              })}
            </h4>
          </div>
        </div>
      </div>
      <div className="row mt-3 ">
        <h2 className="mt-3"> ORDER INFORMATION</h2>
        <div className="col-lg-8 col-md-8 col-sm-6 col-6">
          <div className="col-md-12 p-1 col-lg-12 col-sm-12 col-12">
            <label className="form-label">Your Name</label>
            <input
              className="form-control"
              type="text"
              name="name"
              onChange={handleChange}
              value={name}
            />
          </div>
          <div className="col-md-12 p-1 col-lg-12 col-sm-12 col-12">
            <label className="form-label">Phone Number</label>
            <input
              className="form-control"
              name="numberPhone"
              onChange={handleChange}
              type="text"
              value={numberPhone}
            />
          </div>
          <div className="col-md-12 p-1 col-lg-12 col-sm-12 col-12">
            <label className="form-label">Email</label>
            <input
              className="form-control"
              name="email"
              onChange={handleChange}
              type="text"
              value={email}
            />
          </div>
          <div className="col-md-12 p-1 col-lg-12 col-sm-12 col-12">
            <label className="form-label">Delivery Address</label>
            <textarea
              rows="2"
              className="form-control"
              type="text"
              placeholder=""
              name="address"
              onChange={handleChange}
              value={address}
            ></textarea>
          </div>
          <div className="col-md-12 p-1 col-lg-12 col-sm-12 col-12">
            <button
              type="button"
              className="btn btn-block w-100 mt-3  site-btn btn btn-primary"
              onClick={() => {
                toast.success("Đặt hàng thành công");
              }}
            >
              Confirm Order{" "}
            </button>
          </div>
        </div>
      </div>
      <div>
        <h2> Thank you for your Ordermation.</h2>
        <a href="/order-list">
          <button className="btn btn-primary"> See All Your Orders</button>
        </a>
      </div>
    </div>
  );
}
