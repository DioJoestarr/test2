/* eslint-disable jsx-a11y/anchor-is-valid */
import React from "react";
import ProductBySubCategory from "../Product/ProductBySubCategory";
import SideMenu from "../Product/SideMenu";
import {
  Link,
  useLocation,
  useParams,
  useSearchParams,
} from "react-router-dom";
import FilterMenu from "../Product/FilterMenu";
function ProductBySubCategoryPage() {
  const { subCategory } = useParams();
  const [param] = useSearchParams();
  return (
    <div className="row">
      <SideMenu />
      <FilterMenu />
      <ProductBySubCategory
        subCategory={subCategory}
        param={param.get("orderBy")}
      />
    </div>
  );
}

export default ProductBySubCategoryPage;
