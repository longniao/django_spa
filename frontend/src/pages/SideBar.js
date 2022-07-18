import React from "react";
import {  NavLink } from "react-router-dom";
import SgnIn from "./SgnIn";


function SideBar() {
  return (
    <nav className="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse p-3 nav nav-pills flex-column mb-auto">

      <a href="/" className="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-dark text-decoration-none">
        <span className="fs-2">SPA Assignment</span>
      </a>

      <div className="position-sticky pt-3">

        <ul className="nav flex-column">
          <li className="nav-item"><NavLink className="nav-link" to="/">Home</NavLink></li>
          <li className="nav-item"><NavLink className="nav-link" to="/map">Map</NavLink></li>
        </ul>

        <hr></hr>

        <SgnIn />
        
      </div>
    </nav>

  );
}

export default SideBar;