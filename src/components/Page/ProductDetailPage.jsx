import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import { fetchProductDetail } from "../../Services/services";
import ProductDetails from "../Product/ProductDetails";

export default function ProductDetailPage() {
  const [products, setProducts] = useState({});
  const {id} = useParams();
  useEffect(() => {
    const fetchApi = async () => {
      setProducts(await fetchProductDetail(id));
    };
    fetchApi();
  }, [id]);
  return <ProductDetails products={products} />;
}
