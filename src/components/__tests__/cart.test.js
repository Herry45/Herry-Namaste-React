import { act } from "react-dom/test-utils";
import RestaurantMenu from "../RestaurantMenu";
import Header from '../Header';
import Cart from '../Cart';
import { fireEvent, render, screen } from "@testing-library/react";
import resMenuMock from "../mocks/resMenuMock.json";
import { Provider } from "react-redux";
import appStore from '../../utils/appStore';
import { BrowserRouter } from "react-router-dom";
import "@testing-library/jest-dom";

global.fetch = jest.fn(()=>
   Promise.resolve({
    json:() => Promise.resolve(resMenuMock)
   })
);

// Integration testing(loading 2 components resMenu and header to test add to cart functionality)
it("Should load restaurant menu component and add to cart when clicked button",async()=>{
  await act(async()=> 
    render(
      <BrowserRouter>
        <Provider store={appStore}>
          <RestaurantMenu/>
          <Header/>
        </Provider>
      </BrowserRouter>
       
    )
  )

  const accordianHeader = screen.getByText("Recommended (20)");
  fireEvent.click(accordianHeader);

  const foodItems = screen.getAllByTestId("foodItems");
  expect(foodItems.length).toBe(20);

  // clicking the add button and testing if the cart is getting updated or not 
  const addBtns = screen.getAllByRole("button",{name:"Add +"}); 
  fireEvent.click(addBtns[0]);
  expect(screen.getByText("Cart (1)")).toBeInTheDocument();

  fireEvent.click(addBtns[1]);
  expect(screen.getByText("Cart (2)")).toBeInTheDocument();
});

it("Should have items in cart component when added to cart",async()=>{
  await act(async()=> 
    render(
        <Provider store={appStore}>
          <Cart/>
        </Provider>   
    )
  )

  expect(screen.getAllByTestId("foodItems").length).toBe(2);

});

it("Should have 0 items in cart when clicked on clear cart button",async()=>{
  await act(async()=> 
    render(
        <Provider store={appStore}>
          <Cart/>
        </Provider>   
    )
  )

  const clearBtn = screen.getByRole("button", {name:"Clear Cart"});
  fireEvent.click(clearBtn);
  expect(screen.getByText("Cart is empty. Add items to the cart.")).toBeInTheDocument();
});