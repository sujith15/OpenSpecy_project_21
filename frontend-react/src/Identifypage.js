import React from "react";
import "./Identifypage.css";
import { useState } from "react";
import { withStyles } from "@material-ui/core/styles";
import RadioGroup from "@material-ui/core/RadioGroup";
import Radio from "@material-ui/core/Radio";
import Button from "@material-ui/core/Button";
import FormControlLabel from "@material-ui/core/FormControlLabel";
import FormControl from "@material-ui/core/FormControl";
import { FormLabel } from "@material-ui/core";

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
        backgroundColor: "rgb(0, 0, 0, 0.8)",
        color: "lightblue",
      }}
    >
      <br></br>
      <h4>Identify Spectrum Using the Reference Library</h4>
      <br></br>{" "}
      <div
        style={{
          display: "flex",
          flexDirection: "row",
        }}
      >
        <div
          style={{
            padding: "0rem 1rem 1rem",
          }}
        >
          <FormControl component="fieldset">
            <FormLabel
              component="legend"
              style={{
                color: "lightblue",
                fontWeight: "bold",
              }}
            >
              Type
            </FormLabel>
            <RadioGroup
              aria-label="Type"
              name="controlled-radio-buttons-group"
              defaultValue="Raman"

              // value={value}
              // onChange={handleChange}
            >
              <FormControlLabel
                value="Raman"
                control={<Radio />}
                label="Raman"
              />
              <FormControlLabel value="FTIR" control={<Radio />} label="FTIR" />
            </RadioGroup>
          </FormControl>
        </div>
        <div
          style={{
            padding: "0rem 1rem 1rem",
          }}
        >
          <FormControl component="fieldset">
            <FormLabel
              component="legend"
              style={{
                color: "lightblue",
                fontWeight: "bold",
              }}
            >
              Analysis
            </FormLabel>
            <RadioGroup
              aria-label="Analysis"
              name="controlled-radio-buttons-group"
              defaultValue="Processed"
              // value={value}
              // onChange={handleChange}
            >
              <FormControlLabel
                value="Processed"
                control={<Radio />}
                label="Processed"
              />
              <FormControlLabel
                value="Uploaded"
                control={<Radio />}
                label="Uploaded"
              />
            </RadioGroup>
          </FormControl>
        </div>
        <div
          style={{
            padding: "0rem 1rem 1rem",
          }}
        >
          <FormControl component="fieldset">
            <FormLabel
              component="legend"
              style={{
                color: "lightblue",
                fontWeight: "bold",
              }}
            >
              Region
            </FormLabel>
            <RadioGroup
              aria-label="Region"
              name="controlled-radio-buttons-group"
              defaultValue="Full"
              // value={value}
              // onChange={handleChange}
            >
              <FormControlLabel value="Full" control={<Radio />} label="Full" />
              <FormControlLabel
                value="Peaks"
                control={<Radio />}
                label="Peaks"
              />
            </RadioGroup>
          </FormControl>
        </div>
      </div>
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
            backgroundColor: "gray",
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

export default Identify;
