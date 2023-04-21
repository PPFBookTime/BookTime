import React, {useState} from 'react';
import Axios from "axios";

const Bibliotheque = ({ bibliotheque }) => {
    const url=`http://localhost:8080/LiBibl/update/${bibliotheque.id}`
    const [data, setData] = useState({
        etat : ""
    })

    function submit(e){
        console.log(data)
        e.preventDefault();
        Axios.put(url,{
            etat: data.etat,
        }).then(res =>{
            console.log(res.data)
        })
        window.location.reload();
    }

    function handleChange(e){
        const newdata={...data}
        newdata[e.target.id] = e.target.value
        setData(newdata)
        console.log(newdata)
    }

    return (
        <div className={"c-livres"}>
            <div className={"livres"}>
                <li >
                    <img
                        src={bibliotheque.image}
                        alt={"Couverture de " + bibliotheque.series + ", "+ bibliotheque.titre}/>
                </li>
                <li className={"infos"}>
                    <h2>Titre : <br/>{bibliotheque.titre} </h2>
                    <h4>Série : <br/>{bibliotheque.series}</h4>
                    <p>Description : <br/>{bibliotheque.description}</p>
                    <p>État : <br/>{bibliotheque.etat}</p>

                    <form onSubmit={(e)=>submit(e)}>
                        <select id={"etat"} onChange={handleChange} name={'id'}>
                            <option value="">Sélectionner un état</option>
                            <option value="en cours" placeholder={"etat"}>en cours</option>
                            <option value="lu" placeholder={"etat"}>lu</option>
                            <option value="pas lu" placeholder={"etat"}>pas lu</option>
                        </select>
                        <button type="submit">Changer</button>
                    </form>
                </li>
            </div>
        </div>
    );
};

export default Bibliotheque;