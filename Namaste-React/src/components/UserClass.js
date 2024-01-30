import React from "react"

class UserClass extends React.Component{

    constructor(props){
        super(props);

        this.state={
            userInfo:{
                name:"herry",
                location:"india",
                avatar_url:"herry_url",
                company:"abc",
                bio:"sw dev",

            }

        }

    }

    async componentDidMount(){

        const data = await fetch(" https://api.github.com/users/herry45");
        const jsonData = await data.json();
        console.log(jsonData);
        this.setState(
            {
                userInfo:jsonData,
            }
        )
    }



    render(){
        
        const {name,location,avatar_url,company,bio}=this.state.userInfo;
        
        return(
            <div className=" m-10 p-5">
                <img src={avatar_url} className="max-w-60"></img>
                <h1 className="font-bold text-lg">{name}</h1>
                <h3 className="font font-bold">{bio}</h3>
                <p>Company : {company}</p>
                <p>Location : {location}</p>
            </div>
        )
        
    }
}
export default UserClass;