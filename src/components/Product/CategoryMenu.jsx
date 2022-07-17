import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import { fetchAllCategories } from "../../Services/services";

function CategoryMenu() {
  const [categories, setCategories] = useState([]);
  useEffect(() => {
    const fetchApi = async () => {
      setCategories(await fetchAllCategories());
    };
    fetchApi();
  }, []);

  return (
    <>
      <h2>Category</h2>
      <div className="panel-group category-products" id="accordian">
        {categories?.map((category, index) => {
          return (
            <div className="panel panel-default" key={category.catname}>
              <div className="panel-heading">
                <h4 className="panel-title">
                  <a
                    data-toggle="collapse"
                    data-parent="#accordian"
                    href={`#id${index}`}
                  >
                    <span className="badge pull-right toggle_btn">
                      <i className="fa fa-plus"></i>
                    </span>
                    <Link to={`/product-by-category/${category.catname}`} className="catLink">
                      {category.catname}
                    </Link>
                  </a>
                </h4>
              </div>
              <div id={`id${index}`} className="panel-collapse collapse">
                <div className="panel-body">
                  <ul>
                    {category.subcategories &&
                      category.subcategories.map((subcategory) => {
                        return (
                          <li key={subcategory.id}>
                            <Link
                              to={`/product-by-sub-category/${subcategory.subcatname}`}
                              state={{ subCatName: subcategory.subcatname }}
                            >
                              {subcategory.subcatname}
                            </Link>
                          </li>
                        );
                      })}
                  </ul>
                </div>
              </div>
            </div>
          );
        })}
      </div>
    </>
  );
}

export default CategoryMenu;
