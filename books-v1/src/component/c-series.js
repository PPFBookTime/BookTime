import React, {useEffect, useState} from 'react';
import Livre from "./livre";
import axios from "axios";

const CSeries = () => {
    const [data, setData] = useState([])
    const [selectedRadio, setSelectedRadio] = useState("")
    const [data2, setData2] = useState([])

    useEffect(() => {
        axios
            .get("http://localhost:8080/livres/read")
            .then((res) => setData(res.data))
    }, []);

    useEffect(() => {
        axios
            .get("http://localhost:8080/series/read")
            .then((res) => setData2(res.data))
    }, []);



    return (
        <div className={"mid"}>
            <div className={"c-livres"}>
                <ul className={"radio-container"}>
                    {data2.map((serie) => (
                        <li key={serie.id}>
                            <input
                                type={"radio"}
                                id={serie.name}
                                name={"seriesRadio"}
                                checked={serie === selectedRadio}
                                onChange={(e) => setSelectedRadio(e.target.id)}
                            />
                            <label htmlFor={serie.name}>{serie.name}</label>
                        </li>
                    ))}
                </ul>
                {selectedRadio && <button onClick={() => setSelectedRadio("") }>Annuler la recherche</button>}
                <ul>
                    {data.filter((livres) => livres.serie.name.includes(selectedRadio))
                        .sort()
                        .map((livres, index) => (
                            <Livre key={index} livres={livres} />
                        ))}
                </ul>
            </div>

        </div>
    );
};

export default CSeries;