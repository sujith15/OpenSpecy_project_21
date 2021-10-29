import React from "react";
import { NavLink } from "react-router-dom";
import "./NavBar.css";

const NavBar = () => {
  return (
    <nav className="navbar">
      <div className="nav-container">
        <NavLink exact to="/" className="nav-logo">
          OPEN SPECY
        </NavLink>
        <ul className="nav-menu">
          <li className="nav-item">
            <NavLink
              exact
              to="/"
              activeClassName="active "
              className="nav-links"
            >
              <b> About </b>
            </NavLink>
          </li>
          <li className="nav-item">
            <NavLink
              exact
              to="/upload"
              activeClassName="active "
              className="nav-links"
            >
              <b> Upload File </b>
            </NavLink>
          </li>
        </ul>
      </div>
    </nav>
  );
};

export default NavBar;
