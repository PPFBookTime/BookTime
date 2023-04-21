import React from 'react';
import Header from "../component/header";
import Footer from "../component/footer";
import CLivres from "../component/c-livres";

const Livres = () => {
    return (
        <div>
            <Header></Header>
            <CLivres></CLivres>
            <Footer></Footer>
        </div>
    );
};

export default Livres;