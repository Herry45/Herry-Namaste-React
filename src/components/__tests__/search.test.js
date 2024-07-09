import { fireEvent, render, screen } from "@testing-library/react";
import Body from "../Body";
import {act} from "react-dom/test-utils";
import resListMock from "../mocks/resListMock.json";
import { BrowserRouter } from "react-router-dom";


// mock fetch function
global.fetch = jest.fn(()=>{
  return Promise.resolve({
    json:()=>{
      return Promise.resolve(resListMock);
    }
  })
});

it("should render the body component",async()=>{

  //  When testing, code that causes React state updates should be wrapped into act(...):
  await act(async()=>{
    render(
      <BrowserRouter>
        <Body/>
      </BrowserRouter>
    );

    screen.debug();
    // const searchBtn = screen.getByRole("button");
    // const searchInput = screen.getByTestId("searchInput");

    // fireEvent.change(searchInput,{target: { value:"pizza"}});
    // fireEvent.click(searchBtn);

    // const cards = screen.getAllByTestId("resCard");


    // expect(cards.length).toBe(2);
  })
  
});