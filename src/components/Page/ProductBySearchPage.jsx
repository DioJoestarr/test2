/* eslint-disable jsx-a11y/anchor-is-valid */
import React, { useEffect } from "react";
import { useSearchParams } from "react-router-dom";
import FilterMenu from "../Product/FilterMenu";
import ProductBySearch from "../Product/ProductBySearch";
function ProductBySearchPage() {
  const [param] = useSearchParams();
  return (
    <>
      <FilterMenu />
      <ProductBySearch
        searchKeyword={param.get("keyword")}
        param={param.get("orderBy")}
      />
    </>
  );
}
export default ProductBySearchPage;
