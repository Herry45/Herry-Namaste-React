import { useEffect } from "react";

const Contact = () =>{

    useEffect (()=>{

        const timer = setInterval(()=>{
            console.log("React OP");
        },1000);

        return()=>{
            clearInterval(timer);
        }

    },[])


    return(
        <div>
            Contact
        </div>
    )
}

export default Contact;