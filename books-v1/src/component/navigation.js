import React from "react";
import { NavLink } from "react-router-dom";


const Navigation = () => {
    return (
        <div className={"navigation"}>
            <ul>
                <NavLink to={"/"}
                         className={(nav)=>(nav.isActive ? "nav-active" : "")}>
                    <li> Accueil </li>
                </NavLink>
                <NavLink to={"/livres"}
                         className={(nav)=>nav.isActive ? "nav-active" : ""}>
                    <li> Livres </li>
                </NavLink>
                <NavLink to={"/series"}
                         className={(nav)=>nav.isActive ? "nav-active" : ""}>
                    <li> Séries </li>
                </NavLink>
                <NavLink to={"/bibliotheque"}
                         className={(nav)=>nav.isActive ? "nav-active" : ""}>
                    <li> Bibliothèque </li>
                </NavLink>
                <NavLink to={"/connexion"}
                         className={(nav)=>nav.isActive ? "nav-active" : ""}>
                    <li> Connexion </li>
                </NavLink>
            </ul>
        </div>
    );
};

export default Navigation;