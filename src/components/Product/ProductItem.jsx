import React from "react";
import { Link } from "react-router-dom";
import { AddCart } from "../../store/actions/actions";
import { store } from "../../store/store";
import { toast } from "react-toastify";
export default function ProductItem({ product }) {
  let { id, name, price, image, quantity } = product;
  price = price.toLocaleString("it-IT", { style: "currency", currency: "VND" });
  const handleClickAddToCart = () => {
    store.dispatch(
      AddCart({
        id,
        name,
        image,
        quantity: 1,
        unit_price: product.price,
      })
    );
    toast.success("Thêm vào giỏ hàng thành công");
  };
  return (
    <div className="col-md-3 col-6" key={id}>
      <div className="product-image-wrapper">
        <div className="single-products">
          <div className="productinfo text-center">
            <img src={image} alt="" />
            <h2>{price}</h2>
            <p>{name}</p>
            <Link
              to={`/product-detail/${id}`}
              onClick={handleClickAddToCart}
              className="btn btn-default add-to-cart"
            >
              <i className="fa fa-shopping-cart"></i>Add to cart
            </Link>
          </div>
          <div className="product-overlay">
            <div className="overlay-content">
              <Link to={`/product-detail/${id}`}>
                <img src={image} alt="" />
                <h2>{price}</h2>
                <p>{name}</p>
                <p
                  className="btn btn-default add-to-cart"
                  onClick={handleClickAddToCart}
                >
                  <i className="fa fa-shopping-cart"></i>Add to cart
                </p>
              </Link>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
