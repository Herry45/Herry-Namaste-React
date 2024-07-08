import { useEffect, useState } from "react";
import { MENU_API } from "../utils/Constant";



const useRestaurantMenu = (resId) => {

    const [resInfo,setResInfo] = useState(null);

    useEffect(()=>{
        fetchData();
    },[]);

    const fetchData = async () =>{

        const menuData =  await fetch(MENU_API + resId);
        const jsonMenu = await menuData.json();
        setResInfo(jsonMenu.data);
    }
    
    return resInfo;

};

export default useRestaurantMenu;