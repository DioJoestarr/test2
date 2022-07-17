import React from "react";
import { useLocation } from "react-router-dom";
import Profile from "../Others/Profile";
import LoginPage from "./LoginPage";
export default function ProfilePage() {
  const { state } = useLocation();
  return state ? <Profile profile={state} /> : <LoginPage />;
}
