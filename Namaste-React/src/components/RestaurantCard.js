import { CDN_URL } from "../utils/Constant";

const RestaurantCard=(props)=>{

    const {resData} = props;
    const{cloudinaryImageId,name,avgRating,cuisines,costForTwo,sla}=resData?.info;

    return(
        <div className="m-4 p-4 w-[250px] h-[400px] bg-slate-100 hover:bg-slate-300 rounded-sm" >   
            <img 
            className=" w-[250px] h-[200px] rounded-md"
            src={
               CDN_URL + cloudinaryImageId
            }
            ></img>
            <h3 className="font-bold text-md py-2" >{name}</h3>
            <h4>{avgRating} stars . {sla.deliveryTime} mins</h4>
            <h4>{costForTwo}</h4>
            <p className="text-wrap overflow-hidden"> {cuisines.join(",")}</p>  
        </div>
    )
}

//Higher Order function : Modifies primary component based on condition
export const withPromotionlabel = (RestaurantCard) =>{

    return (props) => {
        return(
            <div>
                <label className="absolute bg-black text-white m-2 px-2 rounded-sm">Promoted</label>
                <RestaurantCard {...props}/>
            </div>
        )
    }
}
 export default RestaurantCard;