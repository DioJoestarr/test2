import React, { useEffect, useState } from "react";
import { fetchProductsBySubCategory } from "../../Services/services";
import ProductItem from "./ProductItem";

function ProductBySubCategory({ subCategory, param }) {
  const [products, setProducts] = useState([]);
  useEffect(() => {
    const fetchApi = async () => {
      const data = await fetchProductsBySubCategory(subCategory);
      setProducts(data);
    };
    fetchApi();
  }, [subCategory]);
  const handleOrder = (a, b) => {
    return param !== "DESC" ? b.price - a.price : a.price - b.price;
  };
  return products? (
    <div className="features_items">
      <h2 className="title text-center">{subCategory}</h2>
      {!param
        ? products.map((product) => {
            return <ProductItem key={product.id} product={product} />;
          })
        : products.sort(handleOrder).map((product) => {
            return <ProductItem key={product.id} product={product} />;
          })}
    </div>
  ) : (
    <h2 style={{ textAlign: "center" }}>Không có sản phẩm</h2>
  );
}

export default ProductBySubCategory;
