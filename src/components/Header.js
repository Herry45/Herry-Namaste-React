import { useContext, useState } from "react";
import { LOGO_URL } from "../utils/Constant";
import { Link } from "react-router-dom";
import useOnlineStatusCheck from "../utils/useOnlineStatusCheck";
import UserContext from "../utils/UserContext";
import { useSelector } from "react-redux";
const Header = () =>{

    const [btnName,setBtnName] = useState("Login");
    const onlineStatus=useOnlineStatusCheck();
    const {loggedInUser} = useContext(UserContext);

    // subscribing to the store using selector
    const cartItems = useSelector((store)=> store.cart.items);
 
    return(
        <div className="flex justify-between">
            <div className="logo-container">
                <img className="w-40" src={LOGO_URL}></img>
            </div>
            <div className="flex items-center">
                <ul className="flex m-4 p-4 gap-4">
                    <li className="font-bold">Status : {onlineStatus ? "✅ ": "🔴"}</li>
                    <li><Link to="/" className="nav-links font-bold">Home</Link></li>
                    <li><Link to="/about" className="nav-links font-bold">About Us</Link> </li>
                    <li><Link to="/contact" className="nav-links font-bold">Contact Us</Link></li>
                    <li><Link to="/grocery" className="nav-links font-bold">Groceries</Link></li>
                    <li className="font-bold"> <Link to="/cart">Cart ({cartItems.length})</Link></li>
                    <button className="login font-bold" onClick={ ()=>{
                        btnName ==="Login" ? setBtnName("Logout"): setBtnName("Login") }} >
                        {btnName}</button>
                    <li className="font-bold">{loggedInUser}</li>
                </ul>
            </div>
        </div>
    )
}

export default Header;