import React, {useState} from 'react';
import Axios from "axios";

const Forms = () => {
    const url="http://localhost:8080/livres/create"
    const [data, setData] = useState({
        nbTome: "",
        image: "",
        serie: {
            id: "",
            nom: ""
        },
        titre: "",
        description: ""
    })

    function submit(e){
        console.log(data)
        e.preventDefault();
        Axios.post(url,{
            nbTome: data.nbTome,
            image: data.image,
            serie: {
                id: data.serie.id,
                nom: data.serie.nom
            },
            titre: data.titre,
            description : data.description

        }).then(res =>{
            console.log(res.data)
        })
    }

    function handle(e){
        const newdata={...data}
        if (e.target.id === "NomSerie")  {
            newdata.serie.nom = e.target.value
        } else if (e.target.id === "idSerie")  {
            newdata.serie.id = e.target.value
        } else {
            newdata[e.target.id] = e.target.value
        }
        setData(newdata)
        console.log(newdata)
    }

    return (
        <div className={"input"}>
            <form onSubmit={(e)=>submit(e)}>
                <input onChange={(e)=>handle(e)} id={"nbTome"} value={data.nbTome} placeholder={"nbTome"} type={"number"} ></input>
                <input onChange={(e)=>handle(e)} id={"image"} value={data.image} placeholder={"image"} type={"text"} ></input>
                <input onChange={(e)=>handle(e)} id={"NomSerie"} value={data.serie.nom} placeholder={"NomSerie"} type={"text"} ></input>
                <input onChange={(e)=>handle(e)} id={"idSerie"} value={data.serie.id} placeholder={"idSerie"} type={"number"} ></input>
                <input onChange={(e)=>handle(e)} id={"titre"} value={data.titre} placeholder={"Titre"} type={"text"} ></input>
                <input onChange={(e)=>handle(e)} id={"description"} value={data.description} placeholder={"description"} type={"text"} ></input>
                <button>Nouveau</button>
            </form>
        </div>
    );
};

export default Forms;
