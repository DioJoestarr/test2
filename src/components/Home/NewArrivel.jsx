import React, { useEffect, useState } from "react";

import { fetchProductsByRemark } from "../../Services/services";
import ProductItem from "../Product/ProductItem";

export default function NewArrivel({ param }) {
  const [products, setProducts] = useState([]);
  useEffect(() => {
    const fetchApi = async () => {
      const data = await fetchProductsByRemark("new");
      if (param) {
        if (param === "DESC") {
          setProducts(data.sort((a, b) => a.price - b.price));
        } else {
          setProducts(data.sort((a, b) => b.price - a.price));
        }
      } else {
        setProducts(data);
      }
    };
    fetchApi();
  }, [param]);
  return products?.length ? (
    <>
      <div className="features_items">
        <h2 className="title text-center">Features Items</h2>
        {products &&
          products.map((product) => {
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
