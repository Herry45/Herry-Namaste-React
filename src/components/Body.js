import { useContext, useEffect, useState } from "react";
import { Link } from "react-router-dom";
import UserContext from "../utils/UserContext";
import useOnlineStatusCheck from "../utils/useOnlineStatusCheck";
import RestaurantCard, { withPromotionlabel } from "./RestaurantCard";
import Shimmer from "./Shimmer";


const Body = () => {


    const [restaurantList, setRestaurantList] = useState([]); // Array destructuring as useState returns an array
    const [renderRestaurantList, setRenderRestaurantList] = useState([]);
    const [searchText, setSearchText] = useState("");
    const { loggedInUser, setUserName } = useContext(UserContext);

    const PromotedRestaurantCard = withPromotionlabel(RestaurantCard);


    useEffect(() => {
        fetchData();
    }, []);

    const fetchData = async () => {
        const data = await fetch(
            "https://www.swiggy.com/dapi/restaurants/list/v5?lat=18.5462313&lng=73.90395099999999&is-seo-homepage-enabled=true&page_type=DESKTOP_WEB_LISTING");
        const jsonData = await data.json();
        console.log("jsonData", jsonData);
        const restaurants = jsonData?.data?.cards[4]?.card?.card?.gridElements?.infoWithStyle?.restaurants;
        setRestaurantList(restaurants);
        setRenderRestaurantList(restaurants);

    }

    const onlineStatus = useOnlineStatusCheck();

    if (onlineStatus == false) {
        return <h3>Looks like you are offline! Please check you internet connection</h3>
    }


    return renderRestaurantList?.length === 0 ? <Shimmer /> :
        (
            <div className="">
                <div
                    className="filter flex items-center gap-4 ">
                    <div className="search-container p-4 gap-4">
                        {/* -> providing "data-testid" to use it for testing
                        -> e.target is provided by browser */}
                        <input data-testid="searchInput" type="Text" className="border border-black" value={searchText} onChange={(e) => { setSearchText(e.target.value) }}></input> 
                        <button className="mx-5 px-5 my-0.5 py-0.5 bg-sky-400 text-white rounded-md" onClick={
                            () => {
                                const searchedRestaurants = restaurantList.filter((res) => res.info.name.toLowerCase().includes(searchText.toLowerCase()));
                                setRenderRestaurantList(searchedRestaurants);
                            }} >Search</button>
                    </div>
                    <div>
                        <button className="mx-5 px-5 my-0.5 py-0.5 bg-sky-400  text-white rounded-md"
                            onClick={() => {
                                const filteredList = renderRestaurantList.filter((res) => res.info.avgRating > 4);
                                setRenderRestaurantList(filteredList);
                            }}>Top Rated Restaurants</button>
                    </div>
                    <div>
                        {/* Changing context value from textbox with user input  */}
                        <label>Context Value</label>
                        <input type="text" className="border border-black m-2 px-1"
                            value={loggedInUser} onChange={(e) => setUserName(e.target.value)} >
                        </input>
                    </div>

                </div>

                <div className="flex flex-wrap">
                    {
                        renderRestaurantList.map((restaurant) => (
                            <Link key={restaurant.info.id} to={"/restaurants/" + restaurant.info.id} >
                                {
                                    restaurant.info.promoted ? <PromotedRestaurantCard resData={restaurant} /> :
                                        <RestaurantCard resData={restaurant} />
                                }
                            </Link>
                        ))}

                </div>
            </div>
        )
}

export default Body;