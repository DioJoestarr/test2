import BrandMenu from "./BrandMenu";
import CategoryMenu from "./CategoryMenu";

function SideMenu() {
  return (
    <div className="col-sm-3">
      <div className="left-sidebar">
        <CategoryMenu />
        <BrandMenu />
        <div className="shipping text-center">
          <img src="assets/images/home/shipping.jpg" alt="" />
        </div>
      </div>
    </div>
  );
}
export default SideMenu;
