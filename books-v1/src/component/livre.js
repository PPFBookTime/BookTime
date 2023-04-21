import React from 'react';
import Axios from "axios";

const Livre = ({ livres }) => {
    localStorage.getItem("id")
    const url = "http://localhost:8080/LiBibl/create"
    let userId
    let livreId

    function submit(userId, livreId){
        Axios.post(url,{userId: userId, livresId: livreId}).then(res =>{
            console.log(res.data)
        })
    }

    function ajouter(livreid1){
        if (localStorage.getItem("id") !== null){
            livreId = livreid1
            userId = JSON.parse(localStorage.id).id
            return(
                <button type={"button"} onClick={() => submit(userId, livreId)}> Ajouter ce livre à ma bibliothèque </button>
            )
        }
    }

    return (
        <div className={"livres"}>
            <li>
                <img
                    src={livres.image}
                    alt={"Couverture de " + livres.serie.name + ", "+ livres.titre}/>
            </li>
            <li className={"infos"}>
                <h2>Titre : <br/>{livres.titre} </h2>
                <h4>Série : <br/>{livres.serie.name}</h4>
                <p>Description : <br/>{livres.description}</p>
                {ajouter(livres.id)}
            </li>
        </div>
    );
};

export default Livre;