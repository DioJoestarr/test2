import React from "react";
import SideMenu from "../Product/SideMenu";
import ProductByBrand from "../Product/ProductByBrand";
import ProductByCategory from "../Product/ProductByCategory";
import { useParams, useSearchParams } from "react-router-dom";
import FilterMenu from "../Product/FilterMenu";
export default function ProductByBrandPage() {
  const { brand } = useParams();
  const [param] = useSearchParams();
  return (
    <div className="row">
      <SideMenu />
      <FilterMenu />
      <ProductByBrand brand={brand} param={param.get("orderBy")} />
    </div>
  );
}
