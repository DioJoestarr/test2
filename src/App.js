import { useEffect } from "react";
import "./App.css";
import Footer from "./components/Common/Footer";
import Header from "./components/Common/Header";
import { useGlobalContext } from "./Context/Context";
import "placeholder-loading/dist/css/placeholder-loading.css";
import AppRoute from "./Route/AppRoute";
import { ToastContainer } from "react-toastify";
import { useLocation } from "react-router-dom";
function App() {
  const { login } = useGlobalContext();
  useEffect(() => {
    if (localStorage.getItem("token")) {
      login();
    }
  }, []);
  return (
    <div style={{ width: "100%", height: "100%" }} className="container-xxl">
      <Header />
      <ToastContainer />
      <div style={{ minHeight: "25vh", padding: "20px" }}>
        <AppRoute />
      </div>
      <Footer />
    </div>
  );
}

export default App;
