import React from "react";
import {
  Route,
  Routes,
  BrowserRouter
} from "react-router-dom";

import SideBar from "./pages/SideBar";
import Home from "./pages/Home";
import Map from "./pages/Map";

function App() {
  return (
  <BrowserRouter>
  <div className="container-fluid">    
    <div className="row">

      <SideBar />

      <main className="col-md-9 ms-sm-auto col-lg-10 px-md-4">

        <div className="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3">
          <Routes>
            <Route exact path="/" element={<Home />} />
            <Route exact path="/map" element={<Map />} />
          </Routes>
        </div>

      </main>




    </div>
    
  </div>
  </BrowserRouter>
  );
}

export default App;
