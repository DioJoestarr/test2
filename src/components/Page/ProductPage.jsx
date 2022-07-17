import React, { Component } from "react";
import { useSearchParams } from "react-router-dom";
import Featured from "../Home/Featured";
import NewArrivel from "../Home/NewArrivel";
import FilterMenu from "../Product/FilterMenu";
import SideMenu from "../Product/SideMenu";
export function ProductPage() {
  const [param] = useSearchParams();
  return (
    <div className="row">
      <SideMenu />
      <FilterMenu />
      <NewArrivel param={param.get("orderBy")} />
      <Featured param={param.get("orderBy")} />
    </div>
  );
}
export default ProductPage;
