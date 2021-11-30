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
          <button className="button">
          Light/Dark Mode
          </button>
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
          <li className="nav-item">
            <NavLink
              exact
              to="/preprocess"
              activeClassName="active "
              className="nav-links"
            >
              <b> Preprocess Spectrum </b>
            </NavLink>
          </li>
          <li className="nav-item">
            <NavLink
              exact
              to="/identify"
              activeClassName="active "
              className="nav-links"
            >
              <b> Identify Spectrum </b>
            </NavLink>
          </li>
          <li className="nav-item">
            <NavLink
              exact
              to="/partner"
              activeClassName="active "
              className="nav-links"
            >
              <b>Partner With Us</b>
            </NavLink>
          </li>
        </ul>
      </div>
    </nav>
  );
};

export default NavBar;
