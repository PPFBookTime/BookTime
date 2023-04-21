import React, {useEffect, useState} from "react";
import axios from "axios";
import Forms from "./Forms";

const CConnexion = () => {
    const [login, setLogin] = useState("");
    const [userId, setUserId] = useState();


    useEffect(() => {
        const loggedInUser = localStorage.getItem("id");
        if (loggedInUser) {
            const foundUser = JSON.parse(loggedInUser);
            setUserId(foundUser);
        }
    }, []);

    const handleSubmit = async e => {
        e.preventDefault();
        const user = { login: login};
        // send the login and password to the server
        const response = await axios.post(
            "http://localhost:8080/login",
            user
        );
        // set the state of the user
        setUserId(response.data)
        // store the user in localStorage
        localStorage.setItem('id', JSON.stringify(response.data))
        console.log(response.data)
    };

    const handleLogout = () => {
        setUserId({});
        setLogin("");
        localStorage.clear();
        window.location.reload();
    };

    // if there's a user show the message below
    if (userId && userId.role==="administrateur") {
        return (<div className={"mid"}>
                <h2>
                    Vous pouvez ajouter un livre en remplissant les champs ci-dessous :
                </h2>
                <Forms></Forms>
                <h3>
                    L'utilisateur {userId.login} est connecté
                </h3>
                <button onClick={handleLogout}>Déconnexion</button>

            </div>
        )
    } else if (userId && userId.role!=="administrateur"){
        return (<div className={"mid"}>
                <h3>
                    L'utilisateur {userId.login} est connecté
                </h3>
                <button onClick={handleLogout}>Déconnexion</button>
            </div>
        )
    }

    // if there's no user, show the login form
    return (
        <div className={"mid"}>
            <form onSubmit={handleSubmit}>
                <label htmlFor="login">Connexion : </label>
                <input
                    type="text"
                    value={login}
                    placeholder="enter a login"
                    onChange={({ target }) => setLogin(target.value)}
                />
                <button>Connexion</button>
            </form>
        </div>
    );
};

export default CConnexion;
