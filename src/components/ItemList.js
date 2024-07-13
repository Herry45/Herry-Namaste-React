import { useDispatch } from "react-redux";
import { CDN_URL } from "../utils/Constant"
import { addItem } from "../utils/cartSlice";
const ItemList = (props) =>{

    const items = props.items;
    const dispatch = useDispatch();

    const handleAddItem = (item) =>{
        dispatch(addItem(item)); 
        // console.log(addItem(item),"dispatch action"); 
    }

    return(
        
           <div>
                { items.map((item) => (
                        <div data-testid="foodItems" key={item.card.info.id} className=" p-2 m-2 border-b-2 border-gray-200 text-left flex justify-between"> 
                            <div className="py-2 w-10/12">
                                <span>{item.card.info.name} - </span>
                                <span> ₹ {item.card.info.price/100} </span>
                                <p className=" text-xs"> {item.card.info.description}</p>
                            </div>
                            <div className="p-2 w-2/12">
                                <div>
                                    <button className="absolute shadow-md bg-black text-white w-16 " onClick={ ()=> handleAddItem(item)}>Add + </button>
                                </div>
                                <img src = {CDN_URL+ item.card.info.imageId} className="h-20"></img>
                            </div>
                            
                            
                        </div>
                     ))
                }
           </div>
        
    )
}
export default ItemList;