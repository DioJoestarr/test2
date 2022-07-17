import React, { useEffect, useState } from "react";
import { fetchProductBySearch } from "../../Services/services";
import ProductItem from "./ProductItem";

function ProductBySearch({ searchKeyword, param }) {
  const [products, setProducts] = useState([]);
  const handleOrder = (a, b) => {
    return param !== "DESC" ? b.price - a.price : a.price - b.price;
  };

  useEffect(() => {
    const fetchApi = async () => {
      const data = await fetchProductBySearch(searchKeyword);
      setProducts(data);
    };
    if (searchKeyword) {
      fetchApi();
    }
  }, [searchKeyword]);

  return searchKeyword ? (
    products && (
      <div className="features_items">
        <h2 className="title text-center">Kết quả tìm kiếm {searchKeyword}</h2>
        {products.length ? (
          param ? (
            products.sort(handleOrder).map((product) => {
              return <ProductItem key={product.id} product={product} />;
            })
          ) : (
            products.map((product) => {
              return <ProductItem key={product.id} product={product} />;
            })
          )
        ) : (
          <h1 className="text-center">Không có kết quả</h1>
        )}
      </div>
    )
  ) : (
    <h2 className="text-center text-warning">Tìm kiếm gì đó?</h2>
  );
}

export default ProductBySearch;
