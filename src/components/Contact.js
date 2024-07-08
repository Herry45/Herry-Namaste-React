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
        <div className="font-bold text-3xl text-center">
            <h1>Contact Us</h1>
        </div>
    )
}

export default Contact;