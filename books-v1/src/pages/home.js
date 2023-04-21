import React from 'react';
import Header from "../component/header";
import Footer from "../component/footer";
import CAccueil from "../component/c-accueil";


const Home = () => {
    return (
        <div>
            <Header></Header>
            <CAccueil></CAccueil>
            <Footer></Footer>
        </div>
    );
};

export default Home;