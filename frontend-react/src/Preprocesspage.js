import React from "react";
import "./Preprocesspage.css";
import { useState } from "react";

const Preprocess = () => {

    const [smoothShow, setSmooth]=useState(true)
    const [correctionShow, setCorrection]=useState(true)
    const [rangeShow, setRange]=useState(true)

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
          <h4>Smooth, Baseline Correct, and Download Processed Spectra</h4>
          <br></br>
          <div>
            <a
              id="downloadPreprocess"
              class="btn btn-primary"
              href=""
              target="_blank"
              download=""
              aria-live="polite"
            >
              Download Processed Spectra
            </a>
          </div>
          <br></br>
          <div>
            <div class="smoothing-field">
                <div class="smoothing-choice-div">
                    <input type="checkbox" class="smoothing-selection" value="smoothing-selection" defaultChecked="True" onChange={()=>setSmooth(!smoothShow)}></input>
                    <b style={{paddingLeft: "15px"}}>Smoothing</b>
                </div>
                {
                smoothShow?<div class="smoothing-polynomial-div">
                    <label for="smoothing-polynomial" style={{paddingRight: "15px", fontWeight: "bold"}}>Smoothing Polynomial</label>
                    <input type="number" id="smoothing-polynomial" name="smoothing-polynomial" min="0" max="7" defaultValue="3"></input>
                </div>:null
                }
            </div>
          </div>
          <br></br>
          <div>
            <div class="correction-field">
                    <div class="correction-choice-div">
                        <input type="checkbox" class="correction-selectoin" value="correction-selection" defaultChecked="True" onChange={()=>setCorrection(!correctionShow)}></input>
                        <b style={{paddingLeft: "15px"}}>Baseline Correction</b>
                    </div>
                    {
                    correctionShow?<div class="correction-polynomial-div">
                        <label for="correction-polynomial" style={{paddingRight: "15px", fontWeight: "bold"}}>Baseline Correction Polynomial</label>
                        <input type="number" id="correction-polynomial" name="correction-polynomial" min="1" max="20" defaultValue="8"></input>
                    </div>:null
                    }
                </div>
          </div>
          <br></br>
          <div>
            <div class="range-field">
                        <div class="range-choice-div">
                            <input type="checkbox" value="range-selection" defaultChecked="True" onChange={()=>setRange(!rangeShow)}></input>
                            <b style={{paddingLeft: "15px"}}>Range Selection</b>
                        </div>
                        {
                        rangeShow?<div class="range-minimum-div">
                            <label for="minimum-spectral-range" style={{paddingRight: "15px", fontWeight: "bold"}}>Minimum Spectral Range</label>
                            <input type="number" id="minimum-spectral-range" name="minimum-spectral-range" min="0" max="100000" defaultValue="0"></input>
                            <label for="maximum-spectral-range" style={{paddingRight: "15px", fontWeight: "bold"}}>Maximum Spectral Range</label>
                            <input type="number" id="maximum-spectral-range" name="maximum-spectral-range" min="1" max="100000" defaultValue="6000"></input>
                        </div>:null
                        }
            </div>
          </div>
          <br></br>
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
export default Preprocess;
