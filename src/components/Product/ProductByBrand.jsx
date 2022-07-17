/* eslint-disable jsx-a11y/anchor-is-valid */
import React, { Component, useEffect, useState } from "react";
import { fetchProductsByBrand } from "../../Services/services";

import ProductItem from "./ProductItem";

export default function ProductByBrand({ brand, param }) {
  const [products, setProducts] = useState([]);
  useEffect(() => {
    const fetchApi = async () => {
      const data = await fetchProductsByBrand(brand);
      setProducts(data);
    };
    fetchApi();
  }, [brand]);
  const handleOrder = (a, b) => {
    return param !== "DESC" ? b.price - a.price : a.price - b.price;
  };
  return products?.length ? (
    <div className="col-sm-9 padding-right">
      <div className="features_items">
        <h2 className="title text-center">Nhãn hàng {brand}</h2>
        {param
          ? products.sort(handleOrder).map((product) => {
              return <ProductItem key={product.id} product={product} />;
            })
          : products.map((product) => {
              console.log(product);
              return <ProductItem key={product.id} product={product} />;
            })}
      </div>
    </div>
  ) : (
    <h2 style={{ textAlign: "center" }}>Không có sản phẩm</h2>
  );
}
