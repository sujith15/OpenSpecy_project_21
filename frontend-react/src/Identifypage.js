import React from "react";
import "./Identifypage.css";
import { useState } from "react";

const Identify = () => {
  const [fileData, setFileData] = useState("");
  const getFile = (e) => {
    setFileData(e.target.files[0]);
  };

  return (
    <div
      style={{
        padding: "1rem 1rem 1rem",
        border: "double #f7f7f9",
        backgroundColor: "rgb(220, 220, 220, 0.5)",
      }}
    >
      <br></br>
      <h4>Identify Spectrum Using the Reference Library</h4>
      <br></br>{" "}
    </div>
  );
};

export default Identify;
