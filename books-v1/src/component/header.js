import React from 'react';
import Navigation from "./navigation";
import {NavLink} from "react-router-dom";

const Header = () => {
    return (
        <div className={"header"} >
            <NavLink to={"/"}
                     className={(nav)=>(nav.isActive ? "nav-active" : "")}>
                <h1>PPF BookTimes</h1>
            </NavLink>
            <Navigation></Navigation>
        </div>
    );
};

export default Header;