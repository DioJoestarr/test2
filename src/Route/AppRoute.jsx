import { Route, Routes } from "react-router-dom";
import HomePage from "../components/Page/HomePage";
import OrderListPage from "../components/Page/OrderListPage";
import ProductByCategoryPage from "../components/Page/ProductByCategoryPage";
import ProductDetailPage from "../components/Page/ProductDetailPage";
import InforPage from "../components/Page/InforPage";
import ContactPage from "../components/Page/ContactPage";
import ProfilePage from "../components/Page/ProfilePage";
import RegisterPage from "../components/Page/RegisterPage";
import LoginPage from "../components/Page/LoginPage";
import ProductPage from "../components/Page/ProductPage";
import CartPage from "../components/Page/CartPage";
import ForgetPassword from "../components/Others/ForgetPassword";
import ProductBySubCategoryPage from "../components/Page/ProductBySubCategoryPage";
import ProductByBrandPage from "../components/Page/ProductByBrandPage";
import ResetPassword from "../components/Others/ResetPassword";
import ProductBySearchPage from "../components/Page/ProductBySearchPage";
function AppRoute() {
  return (
    <Routes>
      <Route path="/" element={<HomePage />} />
      <Route path="/login" element={<LoginPage />} />
      <Route path="/logout" element={<HomePage />} />
      <Route path="/register" element={<RegisterPage />} />
      <Route path="/profile" element={<ProfilePage />} />
      <Route path="/product-detail/:id" element={<ProductDetailPage />} />
      <Route path="/product" element={<ProductPage />} />
      <Route
        path="/product-by-category/:category"
        element={<ProductByCategoryPage />}
      />
      <Route path="/product-by-brand/:brand" element={<ProductByBrandPage />} />
      <Route
        path="/product-by-sub-category/:subCategory"
        element={<ProductBySubCategoryPage />}
      />
      <Route path="/order-list" element={<OrderListPage />} />
      <Route path="/cart" element={<CartPage />} />
      <Route
        path="/policy"
        element={<InforPage slug="policy" title="Chính sách bán hàng" />}
      />
      <Route
        path="/about"
        element={<InforPage slug="about" title="Về chúng tôi" />}
      />
      <Route
        path="/warranty"
        element={<InforPage slug="warranty" title="Chính sách bảo hành" />}
      />
      <Route path="/contact" element={<ContactPage />} />
      <Route path="/forget-password" element={<ForgetPassword />}></Route>
      <Route path="/reset/:id" element={<ResetPassword />}></Route>
      <Route path="/search" element={<ProductBySearchPage />}></Route>
    </Routes>
  );
}
export default AppRoute;
