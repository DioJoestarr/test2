export const initialState = {
  loggedIn: false,
};
export const AppProvider = (state, action) => {
  switch (action.type) {
    case "LOGIN":
      return { ...state, loggedIn: true };
    case "LOGOUT":
      localStorage.removeItem("token");
      return {...state, loggedIn: false};
    default:
      return state;
  }
};
