/* eslint-disable jsx-a11y/anchor-is-valid */
import React from "react";
import ProductByCategory from "../Product/ProductByCategory";
import SideMenu from "../Product/SideMenu";
import { useParams, useSearchParams } from "react-router-dom";
import FilterMenu from "../Product/FilterMenu";
function ProductByCategoryPage() {
  const { category } = useParams();
  const [param] = useSearchParams();
  return (
    <div className="row">
      <SideMenu />
      <FilterMenu/>
      <ProductByCategory category={category} param={param.get("orderBy")} />
    </div>
  );
}

export default ProductByCategoryPage;
