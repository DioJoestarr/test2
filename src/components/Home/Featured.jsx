import React, { useEffect, useState } from "react";
import { fetchProductsByRemark } from "../../Services/services";
import ProductItem from "../Product/ProductItem";
function Featured({ param }) {
  const [products, setProducts] = useState([]);
  useEffect(() => {
    const fetchApi = async () => {
      const data = await fetchProductsByRemark("featured");
      setProducts(data);
    };
    fetchApi();
  }, []);
  const handleOrder = (a, b) => {
    return param !== "DESC" ? b.price - a.price : a.price - b.price;
  };
  return products?.length ? (
    <>
      <div className="features_items">
        <h2 className="title text-center">Features Items</h2>
        {param && products
          ? products.map((product) => {
              return <ProductItem key={product.id} product={product} />;
            })
          : products.sort(handleOrder).map((product) => {
              return <ProductItem key={product.id} product={product} />;
            })}
      </div>
    </>
  ) : (
    <div className="row">
      <div className="ph-item">
        <div className="ph-col-12">
          <div className="ph-picture"></div>
          <div className="ph-row">
            <div className="ph-col-6 big"></div>
            <div className="ph-col-4 empty big"></div>
            <div className="ph-col-2 big"></div>
            <div className="ph-col-4"></div>
            <div className="ph-col-8 empty"></div>
            <div className="ph-col-6"></div>
            <div className="ph-col-6 empty"></div>
            <div className="ph-col-12"></div>
          </div>
        </div>
      </div>
      <div className="ph-item col">
        <div className="ph-col-12">
          <div className="ph-picture"></div>
          <div className="ph-row">
            <div className="ph-col-6 big"></div>
            <div className="ph-col-4 empty big"></div>
            <div className="ph-col-2 big"></div>
            <div className="ph-col-4"></div>
            <div className="ph-col-8 empty"></div>
            <div className="ph-col-6"></div>
            <div className="ph-col-6 empty"></div>
            <div className="ph-col-12"></div>
          </div>
        </div>
      </div>
    </div>
  );
}

export default Featured;
