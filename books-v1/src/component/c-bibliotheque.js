import React, {useEffect, useState} from 'react';
import axios from "axios";
import Bibliotheque from "./bibliotheque";


const CBibliotheque = () => {
    const [data, setData] = useState([])
    useEffect(() => {
        if (localStorage.getItem("id") !== null) {
            axios
                .get("http://localhost:8080/library/" + JSON.parse(localStorage.id).id + "/books")
                .then((res) => setData(res.data))
        }
    }, []);

    if (localStorage.getItem("id") !== null){
        if (JSON.parse(localStorage.id).id !== null && JSON.parse(localStorage.id).id !== undefined) {
            return (
                <div className={"mid"}>
                    <h2>
                        Voici la Bibliothèque de {JSON.parse(localStorage.id).login}
                    </h2>
                    <div >
                        <ul className={""}>
                            {data.map((bibliotheque, index) => (
                                <Bibliotheque key={index} bibliotheque={bibliotheque}/>
                            ))}
                        </ul>
                    </div>
                </div>
            )
        }
    } else {
        return (
            <div>
                <h2>
                    Veuillez vous connectez pour accèder à votre bibliothèque ;)
                </h2>
            </div>
        )
    }
};

export default CBibliotheque;