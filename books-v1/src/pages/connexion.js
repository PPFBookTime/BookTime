import React from 'react';
import Header from "../component/header";
import CConnexion from "../component/c-connexion";
import Footer from "../component/footer";


const Connexion = () => {
    return (
        <div className={"c-connexion"}>
            <Header></Header>
            <CConnexion></CConnexion>
            <Footer></Footer>
        </div>
    );
};

export default Connexion;
