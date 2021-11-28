import React from "react";
import { useState } from "react";
import axios from "axios";
import { Table } from "react-bootstrap";
import "./Mainpage.css";

const Partner = () => {
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
      <h4>Help us reach our goal of revolutionizing spectroscopy.</h4>
      <br></br> <h6>Progress (current staus selected)</h6>
      {/* <table
        style={{
          padding: "0rem 0rem 0rem",
          width: "100%",
        }}
      > */}
      <div class="setfontsize">
        <Table striped bordered hover size="sm" style={{ width: "75%" }}>
          <thead style={{ textAlign: "center" }}>
            <tr>
              <th>Status</th>
              <th>Description</th>
              <th>Annual Need</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Revolutionizing</td>
              <td>
                A paid team that is pushing Open Specy closer to the ultimate
                goal of 100% accurate spectral identification and deep spectral
                diagnostics with a single click
              </td>
              <td>&gt; 100,000$</td>
            </tr>
            <tr>
              <td>Thriving</td>
              <td>
                A single paid staff person working to update and build the
                community and the tool
              </td>
              <td>10,000–100,000$</td>
            </tr>
            <tr>
              <td>Maintaining</td>
              <td>Maintenance costs and minor ad-hoc updates and bug fixes</td>
              <td>1,000–10,000$</td>
            </tr>
            <tr>
              <td>Supporting</td>
              <td>Keeping the app online and essential maintenance</td>
              <td>100–1,000$</td>
            </tr>
            <tr>
              <td>Saving</td>
              <td>Long term storage only</td>
              <td>&lt;100$</td>
            </tr>
          </tbody>
        </Table>
      </div>
    </div>
  );
};
export default Partner;
