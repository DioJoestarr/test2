import React from "react";
import {  useSearchParams } from "react-router-dom";


export default function FilterMenu() {
  const [params, setParams] = useSearchParams();
  const handleClickDesc = (e) => {
    if (params.has("keyword")) {
      setParams({ keyword: params.get("keyword"), orderBy: "DESC" });
    } else {
      setParams({ orderBy: "DESC" });
    }
  };
  const handleClickAsc = (e) => {
    if (params.has("keyword")) {
      setParams({ keyword: params.get("keyword"), orderBy: "ASC" });
    } else {
      setParams({ orderBy: "ASC" });
    }
  };
  return (
    <div className="panel-group category-products filter-menu-container" id="accordian">
      <div className="panel panel-default filter-menu">
        <div className="panel-heading">
          <h4 className="panel-title">
            <a data-toggle="collapse" data-parent="#accordian" href="#id100">
              <span className="badge pull-right">
                <i className="fa fa-plus"></i>
              </span>
              Lọc theo giá
            </a>
          </h4>
        </div>
        <div id="id100" className="panel-collapse collapse filter-submenu">
          <div className="panel-body">
            <ul>
              <li>
                <div onClick={handleClickDesc} className="filter-item">
                  Từ thấp đến cao
                </div>
              </li>
              <li>
                <div onClick={handleClickAsc} className="filter-item">
                  Từ cao đến thấp
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  );
}
