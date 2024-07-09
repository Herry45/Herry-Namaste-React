import { render,screen } from "@testing-library/react";
import RestaurantCard from "../RestaurantCard";
import resCardMock from "../mocks/resCardMock.json";
import "@testing-library/jest-dom"

it("Should render restaurantCard component with props data",()=>{
  render(<RestaurantCard resData={resCardMock}/> )

  const name = screen.getByText("La Pino'z Pizza");
  expect(name).toBeInTheDocument();
})