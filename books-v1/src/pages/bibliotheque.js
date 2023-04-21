import React from 'react';
import Header from "../component/header";
import Footer from "../component/footer";
import CBibliotheque from "../component/c-bibliotheque";

const Bibliotheque = () => {
    return (
        <div>
            <Header></Header>
            <CBibliotheque></CBibliotheque>
            <Footer></Footer>
        </div>
    );
};

export default Bibliotheque;