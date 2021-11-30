import React from "react";
import "./Uploadpage.css";
import { useState } from "react";
import axios from "axios";
import Button from "@material-ui/core/Button";
import Select from 'react-select';

const options = [
  { value: 'FTIR', label: 'FTIR' },
  { value: 'RAMAN', label: 'RAMAN' },
  { value: 'MISC', label: 'MISC' }
]

const Upload = () => {
  const [fileData, setFileData] = useState("");
  const [fileName, setFileName] = useState("");
  const getFile = (e) => {
    setFileData(e.target.files[0]);

    const file = e.target.files[0];

    console.log(file);

    if (file.size > 10000000) {
      window.alert("Please upload a file smaller than 10 MB");
      return false;
    }
    setFileName(file.name);
  };

  const uploadFile = (e) => {
    e.preventDefault();
    const data = new FormData();
    data.append("file", fileData);
    axios({
      method: "POST",
      url: "http://localhost:5001/upload",
      data: data,
    }).then((res) => {
      if (window.confirm(res.data.message)) {
        if (res.data.status) {
          //get fuction will be here on implimentation
          window.location.reload();
        }
      }
    });
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
          {/* <input
            type="file"
            name="file"
            accept=".csv,.asp,.spc,.jdx,.spa,.0"
            onChange={getFile}
            required
            // value={""}
          /> */}
          <Select options={options} name="FileType"/>
            
          <Button variant="contained" component="label">
            Choose File
            <input
              type="file"
              hidden
              onChange={getFile}
              accept=".csv,.asp,.spc,.jdx,.spa,.0"
            />
          </Button>

          <label className={"p-3"}>{fileName}</label>

          <input
            class="btn btn-primary"
            type="submit"
            name="upload"
            value="Upload"
          />
        </form>
      </div>
      <br></br>
      <div>
        <a
          id="downloadData4"
          class="btn btn-primary"
          href="testdata.csv"
          target="_blank"
          download=""
          aria-live="polite"
        >
          Sample File
        </a>
      </div>
      <br></br>
      <div
        style={{
          display: "flex",
          justifyContent: "center",
          alignContent: "center",
        }}
      >
        <div
          style={{
            border: "solid black",
            backgroundColor: "white",
            padding: "2rem",
            width: "80%",
            textAlign: "center",
          }}
        >
          <h4 id="placeholder1">Upload some data to get started...</h4>

          <div
            style={{
              width: "100%",
              height: "30rem",
              visibility: "hidden",
            }}
          ></div>
        </div>
      </div>
    </div>
  );
};
export default Upload;
