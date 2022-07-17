import { useState } from "react";
import { useEffect } from "react";
import { Link } from "react-router-dom";
import { fetchAllBrands } from "../../Services/services";

function BrandMenu() {
  const [brands, setBrands] = useState([]);
  useEffect(() => {
    (async () => {
      const data = await fetchAllBrands();
      setBrands(data);
    })();
  }, []);
  return (
    <div className="brands_products">
      <h2>Brands</h2>
      <div className="brands-name">
        <ul className="nav nav-pills nav-stacked">
          {brands.map((brand) => {
            return (
              <li key={brand}>
                <Link to={`/product-by-brand/${brand}`}>
                  {" "}
                  <span className="pull-right">(50)</span>
                  {brand}
                </Link>
              </li>
            );
          })}
        </ul>
      </div>
    </div>
  );
}
export default BrandMenu;
