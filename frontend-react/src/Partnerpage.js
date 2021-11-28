import React from "react";
import { useState } from "react";
import axios from "axios";

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
      <br></br> <h5>A basic HTML table</h5>
      <table
        style={{
          padding: "0rem 0rem 0rem",
          width: "100%",
        }}
      >
        <tr>
          <th>Status</th>
          <th>Description</th>
          <th>Annual Need</th>
        </tr>
        <tr>
          <td>Revolutionizing</td>
          <td>
            A paid team that is pushing Open Specy closer to the ultimate goal
            of 100% accurate spectral identification and deep spectral
            diagnostics with a single click
          </td>
          <td>&gt; 100,000$</td>
        </tr>
        <tr>
          <td>Thriving</td>
          <td>
            A single paid staff person working to update and build the community
            and the tool
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
      </table>
    </div>
  );
};
export default Partner;
