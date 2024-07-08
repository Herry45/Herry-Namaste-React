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
        <div className="text-center">
            <h1 className="font-bold text-3xl text-center">Contact Us</h1>
            <button className="bg-red-700 text-white rounded-md p-1 m-5"> submit</button>
        </div>
    )
}

export default Contact;