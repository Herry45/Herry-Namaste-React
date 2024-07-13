import { useDispatch, useSelector } from "react-redux";
import ItemList from "./ItemList";
import { clearCart } from "../utils/cartSlice";

const Cart = () =>{

    const cartItems = useSelector((store)=>store.cart.items);
    
    console.log(cartItems,"items");  // subcribing to only needed portion of the store
    const dispatch = useDispatch();

    const handleClearCart = ()=>{
        dispatch(clearCart());
    }

    return(
        <div className="text-center m-4 p-4">
            <h1 className="text-2xl font-bold">Cart </h1> 
            <div className="m-4">
                {
                    cartItems.length ===0 ? <p>Cart is empty. Add items to the cart.</p> : 
                    <div className="w-6/12 m-auto"> 
                        <ItemList items={cartItems}></ItemList>
                        <button className="bg-black text-white m-4 p-1 rounded-lg"  onClick={handleClearCart}>Clear Cart</button>
                    </div>    
                }
            </div>
           
        </div>
    )
    
}
export default Cart;