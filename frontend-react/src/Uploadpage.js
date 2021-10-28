import React from "react";
import "./Uploadpage.css";
import { useState } from "react";
import axios from "axios";


const Upload = () => {
  const [fileData, setFileData] = useState("");
  const getFile = (e) => {
    setFileData(e.target.files[0]);
  };

  const uploadFile = (e) => {
    e.preventDefault();
    const data = new FormData();
    data.append("file", fileData);
    // axios({
    //   method: "POST",
    //   url: "http://localhost:5001/upload",
    //   data: data,
    // }).then((res) => {
    //   alert(res.data.message);
    // });

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
      <h4>Upload, View, and Share Spectra</h4>
      <br></br>{" "}
      <div>
        <h5>Choose .csv (preferred), .asp, .jdx, .spc, .spa, or .0 File</h5>
        <br></br>
        <form onSubmit={uploadFile}>
          <input
            type="file"
            name="file"
            accept=".csv,.asp,.spc,.jdx,.spa,.0"
            onChange={getFile}
            required
          />
          <input
            class="btn btn-primary"
            type="submit"
            name="upload"
            value="Upload"
          />
        </form>
      </div>


    </div>
  );

};

export default Upload;
