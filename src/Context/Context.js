import { useReducer, createContext, useContext } from "react";
import { AppProvider, initialState } from "./AppReducer";
const GlobalContext = createContext(initialState);
export function GlobalProvider({ children }) {
  const [state, dispatch] = useReducer(AppProvider, initialState);
  const login = () => {
    dispatch({ type: "LOGIN" });
  };
  const logout = () => {
    dispatch({ type: "LOGOUT" });
  };
  return (
    <GlobalContext.Provider value={{ ...state, login, logout }}>
      {children}
    </GlobalContext.Provider>
  );
}
export const useGlobalContext = () => {
  return useContext(GlobalContext);
};
