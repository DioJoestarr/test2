import React, { useState, useEffect } from "react";
import { toast } from "react-toastify";
import { AddCart } from "../../store/actions/actions";
import { store } from "../../store/store";

export default function ProductDetails({ products }) {
  const [product, setProduct] = useState({});
  const [productDetail, setProductDetail] = useState({});
  const [quantity, setQuantity] = useState(1);

  useEffect(() => {
    if (products.product) {
      setProduct(products.product[0]);
    }
    if (products.productDetail) {
      setProductDetail(products.productDetail[0]);
    }
  }, [products]);
  let size = productDetail?.size?.split(",");
  let color = productDetail?.color?.split(",");
  const handleClickAddToCart = () => {
    store.dispatch(
      AddCart({
        id: product.id,
        name: product.name,
        image: product.image,
        quantity: quantity,
        unit_price: product.price,
      })
    );
    toast.success("Thêm vào giỏ hàng thành công");
  };
  return (
    <div className="container">
      <div className="col-lg-10 border p-3 main-section bg-white">
        <div className="row m-0">
          <div className="col-md-5 left-side-product-box pb-3">
            <img src={product.image} className="border p-3" alt="" />
            <span className="sub-img">
              <img src={productDetail?.img_1} className="border p-2" alt="" />
              <img src={productDetail?.img_2} className="border p-2" alt="" />
              <img src={productDetail?.img_3} className="border p-2" alt="" />
              <img src={productDetail?.img_4} className="border p-2" alt="" />
            </span>
          </div>
          <div className="col-md-7">
            <div className="right-side-pro-detail border p-3 m-0">
              <div className="row">
                <div className="col-lg-12">
                  <p className="m-0 p-0">{product.name}</p>
                </div>
                <div className="col-lg-12">
                  <p className="m-0 p-0 price-pro">
                    {product.sale_price} <del>{product.price}</del>
                  </p>
                  <hr className="p-0 m-0" />
                </div>
                <div className="col-lg-12 pt-2">
                  BRAND: {product.brand}
                  <br />
                  PRODUCT CODE: {product.product_code}
                  <br />
                </div>
                <div className="col-lg-12 pt-2">
                  <h5>Product Detail</h5>
                  <div>{productDetail?.short_description}</div>
                  <div>{productDetail?.long_description}</div>
                </div>
                <div className="col-lg-12"></div>
                <div className="col-lg-12">
                  <h6>Quantity :</h6>
                  <input
                    type="number"
                    className="form-control text-center w-100"
                    value={quantity}
                    onChange={(e) => {
                      setQuantity(e.target.value);
                    }}
                  />
                </div>
                <div className="col-lg-12">
                  <h6>Color :</h6>
                  <select>
                    {color?.map((item) => {
                      return (
                        <option key={item} value={item}>
                          {item}
                        </option>
                      );
                    })}
                  </select>
                </div>
                <div className="col-lg-12">
                  <h6>Size :</h6>
                  <select>
                    {size?.map((item) => {
                      return (
                        <option key={item} value={item}>
                          {item}
                        </option>
                      );
                    })}
                  </select>
                </div>
                <div className="col-lg-12">
                  <div className="row">
                    <div className="col-lg-6 ">
                      <button
                        className=" addtocartbutton btn btn-danger w-100"
                        onClick={handleClickAddToCart}
                      >
                        Add To Cart
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
