import { act } from "react-dom/test-utils";
import RestaurantMenu from "../RestaurantMenu";
import { fireEvent, render, screen } from "@testing-library/react";
import resMenuMock from "../mocks/resMenuMock.json";
import { Provider } from "react-redux";
import appStore from '../../utils/appStore';

global.fetch = jest.fn(()=>
   Promise.resolve({
    json:() => Promise.resolve(resMenuMock)
   })
);

it("Should load restaurant menu component",async()=>{
  await act(async()=> 
    render(
      <Provider store={appStore}>
        <RestaurantMenu/>
      </Provider>
       
    )
  )

  const accordianHeader = screen.getByText("Recommended (20)");
  fireEvent.click(accordianHeader);
})