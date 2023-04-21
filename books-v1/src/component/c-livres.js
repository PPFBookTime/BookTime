import React, {useEffect, useState} from 'react';
import Livre from "./livre";
import axios from "axios"


const CLivres = () => {
    const [data, setData] = useState([])



    useEffect(() => {
        axios
            .get("http://localhost:8080/livres/read")
            .then((res) => setData(res.data))
    }, []);


    return (
        <div className={"mid"}>
            <h2>
                Voici la liste de nos livres.
            </h2>
            <ul className={"c-livres"}>
                {data.map((livres, index) => (
                    <Livre key={index} livres={livres} />
                ))}
            </ul>
        </div>
    );
};

export default CLivres;