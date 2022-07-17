import { UpdateCartLocalStogare } from "../actions/actions";

const initState = {
  carts: [],
  numberCart: 0,
};
const cartReducer = (state = initState, action) => {
  switch (action.type) {
    case "GET_NUMBER_CART":
      return {
        ...state.numberCart,
      };
    case "SET_CART":
      return {
        ...state,
        carts: action.payload,
      };
    case "ADD_CART":
      let newCart = { ...action.payload, quantity: 1 };
      if (state.numberCart === 0) {
        state.carts.push(newCart);
      } else {
        let check = false;
        state.carts.map((item, key) => {
          if (item.id === action.payload.id) {
            state.carts[key].quantity++;
            check = true;
          }
        });
        if (!check) state.carts.push(newCart);
      }
      UpdateCartLocalStogare(state.carts);
      return {
        ...state,
        numberCart: state.numberCart + 1,
      };
    case "INCREASE_QUANTITY":
      state.numberCart++;
      state.carts.find((item) => {
        return item.id === action.payload;
      }).quantity++;
      UpdateCartLocalStogare(state.carts);
      return {
        ...state,
      };
    case "DECREASE_QUANTITY": {
      state.numberCart--;
      state.carts.find((item) => {
        return item.id === action.payload;
      }).quantity--;
      UpdateCartLocalStogare(state.carts);
      return {
        ...state,
      };
    }
    case "DELETE_CART": {
      let quantity = state.carts[action.payload].quantity;
      const carts = state.carts.filter((item, key) => {
        return item.id !== state.carts[action.payload].id;
      });
      UpdateCartLocalStogare(carts);
      return {
        ...state,
        numberCart: state.numberCart - quantity,
        carts,
      };
    }
    case "UPDATE_CART":
      let old_quantity = state.carts.find((item) => {
        return item.id === action.payload.id;
      }).quantity;
      state.carts.find((item) => {
        return item.id === action.payload.id;
      }).quantity = action.payload.quantity;
      state.numberCart -= old_quantity;
      state.numberCart += action.payload.quantity;
      UpdateCartLocalStogare(state.carts);
      return {
        ...state,
      };
    default:
      return state;
  }
};
export default cartReducer;
