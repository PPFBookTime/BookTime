import React, {useEffect, useState} from 'react';
import axios from "axios";
import Livre from "./livre";

const CAccueil = () => {
    const [data, setData] = useState([])


    useEffect(() => {
        axios
            .get("http://localhost:8080/livres/read")
            .then((res) => setData(res.data))
    }, []);


    return (
        <div className={"mid"}>
            <div className={"accueil"}>
                <h2>
                    Bienvenue sur notre readlist PPF BookTimes.
                </h2>
                <h3>
                    Nous vous laissons découvrir quelques-un de nos livres.
                </h3>
                {data
                    .slice(0, 3)
                    .map((livres, index) => (
                        <div className={"c-livres"}>
                            <Livre key={index} livres={livres} />
                        </div>
                    ))}
            </div>
        </div>
    );
};

export default CAccueil;