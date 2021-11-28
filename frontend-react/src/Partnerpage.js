import React from "react";
import { useState } from "react";
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
      <br></br>
      <div style={{ display: "flex" }}>
        <div style={{ flex: "33.33%", padding: "5px" }}>
          <div style={{ textAlign: "center" }}>
            <h3>Donate Cash</h3>
          </div>
          <div style={{ textAlign: "center" }}>
            <img
              src="https://p.turbosquid.com/ts-thumb/rX/Wm1eqB/t5/currencysymbolsgoldensetc4dmodel000/jpg/1613802168/300x300/sharp_fit_q85/a31625492ce9c8009ab3e4281ad752006e1163ec/currencysymbolsgoldensetc4dmodel000.jpg"
              alt="Snow"
              style={{ width: "80%" }}
            ></img>
          </div>
          <br></br>
          <div style={{ textAlign: "center" }}>
            <a
              href="https://www.paypal.com/donate/?cmd=_donations&business=wincowger@gmail.com&lc=US&item_name=Donation+to+Open+Specy&no_note=0&cn=&currency_code=USD&bn=PP-DonationsBF:btn_donateCC_LG.gif:NonHosted"
              target="_blank"
              class="btn btn-primary"
            >
              Donate
            </a>
          </div>
        </div>
        <div style={{ flex: "33.33%", padding: "5px" }}>
          <div style={{ textAlign: "center" }}>
            <h3>Buy From Swag Store</h3>
          </div>
          <div style={{ textAlign: "center" }}>
            <img
              src="https://image.spreadshirtmedia.com/image-server/v1/products/T813A823PA3132PT17X42Y46D1038541132FS4033/views/1,width=650,height=650,appearanceId=823/updated-logo-for-open-specy-designed-by-alex-mcgoran.jpg"
              alt="Forest"
              style={{ width: "80%" }}
            ></img>
          </div>
          <br></br>
          <div style={{ textAlign: "center" }}>
            <a
              href="https://openspecy.myspreadshop.com/all"
              target="_blank"
              class="btn btn-primary"
            >
              Shop
            </a>
          </div>
        </div>
        <div style={{ flex: "33.33%", padding: "5px" }}>
          <div style={{ textAlign: "center" }}>
            <h3>Contribute time</h3>
          </div>
          <div style={{ textAlign: "center" }}>
            <img
              src="https://health.sunnybrook.ca/wp-content/uploads/2020/02/healthy-hands-810x424.jpg"
              alt="Mountains"
              style={{ width: "80%" }}
            ></img>
          </div>
          <br></br>
          <div style={{ textAlign: "center" }}>
            <a
              href="https://docs.google.com/document/d/1SaFgAYKsLbMSYdJClR5s42TyGmPRWihLQcf5zun_yfo/edit#heading=h.41l4zitx7fsg"
              target="_blank"
              class="btn btn-primary"
            >
              Guidelines
            </a>
          </div>
        </div>
      </div>
    </div>
  );
};
export default Partner;
