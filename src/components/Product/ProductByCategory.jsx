/* eslint-disable jsx-a11y/anchor-is-valid */
import React, { useEffect, useState } from "react";
import { fetchProductsByCategory } from "../../Services/services";
import ProductItem from "./ProductItem";
function ProductByCategory({ category, param }) {
  
  const [products, setProducts] = useState([]);
  useEffect(() => {
    const fetchApi = async () => {
      setProducts(await fetchProductsByCategory(category));
    };
    fetchApi();
  }, [category]);
  const handleOrder = (a, b) => {
    return param !== "DESC" ? b.price - a.price : a.price - b.price;
  };
  return products?.length ? (
    <div className="col-sm-9 padding-right">
      <div className="features_items">
        <h2 className="title text-center">{category}</h2>
        {!param
          ? products.map((product) => {
              return <ProductItem key={product.id} product={product} />;
            })
          : products.sort(handleOrder).map((product) => {
              return <ProductItem key={product.id} product={product} />;
            })}
      </div>
    </div>
  ) : (
    <h2 style={{ textAlign: "center" }}>Không có sản phẩm</h2>
  );
}

export default ProductByCategory;
