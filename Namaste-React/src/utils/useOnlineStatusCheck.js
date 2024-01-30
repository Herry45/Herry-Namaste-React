import { useEffect, useState } from "react";


const useOnlineStatusCheck = () =>{

    const [onlineStatus,setOnlineStatus] = useState(true);

    useEffect(()=>{

        window.addEventListener("offline",()=>{
            setOnlineStatus(false);
        });

        window.addEventListener("online",()=>{
            setOnlineStatus(true);
        });

    },[])

    return onlineStatus;
}
export default useOnlineStatusCheck;