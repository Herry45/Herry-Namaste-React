import { useState } from "react";
import ItemList from "./ItemList";
const RestaurantCategory = (props) => {

    const data = props.data;
    const showItem = props.showItem;
    const setShowItem = props.setShowItem;

    const handleClick = ()=>{
      setShowItem();
      
    }
    return(
      
        <div className="p-5 shadow-lg my-4">
          <div className=" flex justify-between cursor-pointer" onClick = {handleClick}>
            <span className=" font-bold "> {data.title} ({data.itemCards.length})</span> 
            <span> 🔽</span> 
          </div>
          {showItem  &&  <ItemList items={data.itemCards} />} 
        </div>
      
       
    )
}
export default RestaurantCategory;