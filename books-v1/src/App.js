import React from "react";
import {BrowserRouter, Routes, Route} from "react-router-dom";
import Home from "./pages/home";
import Livres from "./pages/livres";
import Series from "./pages/series";
import Bibliotheque from "./pages/bibliotheque";
import Connexion from "./pages/connexion";
import './styles/App.scss';


function App() {
  return (
    <BrowserRouter>
      <Routes>
          <Route path={"/"} element={<Home />} />
          <Route path={"/livres"} element={<Livres />} />
          <Route path={"/series"} element={<Series />} />
          <Route path={"/bibliotheque"} element={<Bibliotheque />} />
          <Route path={"/connexion"} element={<Connexion />} />
      </Routes>
    </BrowserRouter>
  );
};

export default App;
