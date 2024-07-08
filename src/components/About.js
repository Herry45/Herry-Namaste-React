import { useContext } from "react";
import UserClass from "./UserClass";
import UserContext from "../utils/UserContext";
const About = () => {
const {loggedInUser}= useContext(UserContext);

    return (
       <>
       <div>
            <h1 className="mx-16">Context Value: {loggedInUser}</h1>
            <UserClass name ={"Herry dewani"} />
       </div>
       </> 
    )

}

export default About;

