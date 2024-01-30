import Shimmer from "./Shimmer";
import { useParams } from "react-router-dom";
import useRestaurantMenu from "../utils/useRestaurantMenu";
import RestaurantCategory from "./RestaurantCategory";
import { useState } from "react";

const RestaurantMenu = () =>{

   

    const {resId} = useParams();
    const resInfo = useRestaurantMenu(resId);     // custom hook
    const [showItem,setShowItem] = useState(null);
    

    if (resInfo === null) return <Shimmer/> ;

    const {name,cuisines,costForTwoMessage} = resInfo?.cards[0]?.card?.card?.info;

    const categories = resInfo?.cards[2]?.groupedCard?.cardGroupMap?.REGULAR?.cards.filter(
        (category) => category?.card?.card?.["@type"] === "type.googleapis.com/swiggy.presentation.food.v2.ItemCategory" );

   

    return  (
        
            <div className="text-center ">
                <h1 className="font-bold my-5 text-2xl">{name}</h1>
                <p className="font-bold">{cuisines.join(",")} - {costForTwoMessage}</p>
                <div className="m-auto w-6/12 my-5 p-5">
                    {
                        categories.map((category,index) => 
                        <RestaurantCategory                             //controlled component by parent restaurant menu
                        key={category?.card?.card.title} 
                        data={category?.card?.card} 
                        showItem = {index === showItem ? true : false}  // controlling show items from parent
                        setShowItem={()=> setShowItem(index)}/> )       // passing setState function as a prop
                    }
                </div>
               
                
            </div> 
        
    )
}
export default RestaurantMenu;