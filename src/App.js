import React, { Suspense, lazy, useEffect, useState } from "react";
import  ReactDOM  from "react-dom/client";
import Header from "./components/Header";
import Body from "./components/Body";
import { createBrowserRouter,RouterProvider ,Outlet} from "react-router-dom";
import About from "./components/About";
import Contact from "./components/Contact";
import Error from "./components/Error";
import RestaurantMenu from "./components/RestaurantMenu";
import Shimmer from "./components/Shimmer";
import UserContext from "./utils/UserContext";
import { Provider } from "react-redux";
import appStore from "./utils/appStore";
import Cart from "./components/Cart";
//Dynamic import for on demand loading also known as chunking
const Grocery = lazy(()=> import("./components/Grocery"));

const AppLayout = () =>{
    // use case of context update
    // Authentication logic
    const [userName,setUserName]= useState();

    useEffect(()=>{
        // make an API call 
        const data={
            name: "Herry Dewani",
        }
        setUserName(data.name);
    },[])

    return(
        <div className="app">
            <Provider store={appStore}>
                <UserContext.Provider value={{loggedInUser:userName , setUserName}}>  {/* Updating context for whole app- passing setUserName function to update context value from different place. */}
                    <UserContext.Provider value={{loggedInUser:userName}}>   {/* Updating context for Header*/}
                        <Header/>
                    </UserContext.Provider>
                    <Outlet />
                </UserContext.Provider>
            </Provider>
        </div> 
    )
}
const appRouter = createBrowserRouter([
    {
        path:"/",
        element: <AppLayout />,
        errorElement: <Error />,
        children:[
            {
                path:"/",
                element: <Body />,
                errorElement:<Error />
            },
            {
                path:"/about",
                element: <About />,
                errorElement:<Error />
            },
            {
                path:"/contact",
                element: <Contact />,
                errorElement:<Error />,
            },
            {
                path:"/restaurants/:resId",
                element: <RestaurantMenu />,
                errorElement:<Error />,
            },
            {
                path:"/cart",
                element: <Cart/>,
                errorElement:<Error />,
            },
            {
                path:"/grocery",
                element: <Suspense fallback={<Shimmer/>}> <Grocery/> </Suspense>,
                errorElement:<Error />,
            },
        ]
    }
    
])

const root=ReactDOM.createRoot(document.getElementById("root"));
root.render( <RouterProvider  router={appRouter} />  ); 

  