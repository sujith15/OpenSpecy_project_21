import "./App.css";
import "./Mainpage.css";

const Mainpage = () => {
  return (
    <div
      style ={{
        backgroundColor: "rgb(0, 0, 0, 0.9)",
        color: "lightblue",
      }}
    >
      <div>
        <div>
          <div
            style={{
              padding: "1rem 1rem 1rem",
              border: "double #f7f7f9",
              backgroundColor: "rgb(220, 220, 220, 0.1)",
              boxSizing: "content-box",
            }}
          >
            <h2 data-testid="header1">Welcome</h2>
            <p class="setfontsize">
              Join the hundreds of researchers from around the world who are
              part of the Open Specy community by analyzing, sharing,
              processing, and identifying their Raman and IR spectra. These
              services are free and open source thanks to our partners:
            </p>
            <div style={{ padding: "1rem" }}>
              <div
                style={{
                  padding: "0.75rem 1.3rem 0.75rem",
                  border: "double #f7f7f9",
                  backgroundColor: "rgb(200, 215, 0, 0.5)",
                  borderRadius: "50px",
                }}
              >
                <h4>Revolutionizing (&gt;$100,000)</h4>
              </div>
              <br></br>
              <div
                style={{
                  padding: "0.75rem 1.3rem 0.75rem",
                  border: "double #f7f7f9",
                  backgroundColor: "rgb(180, 127, 50, 0.5)",
                  borderRadius: "50px",
                }}
              >
                <h4>Thriving ($10,000–$100,000)</h4>
                <div>
                  <img
                    src="Moorelogo.png"
                    style={{ padding: "1rem" }}
                    height="100"
                    class="center"
                  ></img>
                </div>
                <h5>Mcpike Zima Charitable Foundation</h5>
              </div>
              <br></br>
              <div
                style={{
                  padding: "0.75rem 1.3rem 0.75rem",
                  border: "double #f7f7f9",
                  backgroundColor: "rgb(100, 200, 80, 0.5)",
                  borderRadius: "50px",
                }}
              >
                <h4>Maintaining ($1,000–$10,000)</h4>
                <img
                  src="UCR.png"
                  style={{ padding: "1rem" }}
                  height="50"
                ></img>
                <img
                  src="https://upload.wikimedia.org/wikipedia/commons/7/7e/NSF_logo.png"
                  style={{ padding: "1rem" }}
                  height="50"
                ></img>
                <img
                  src="https://www.awi.de/typo3conf/ext/sms_boilerplate/Resources/Public/Images/AWI/awi_logo.svg"
                  style={{ padding: "1rem" }}
                  height="50"
                ></img>
                <img
                  src="https://www.hpu.edu/_global/images/header-logo.png"
                  style={{ padding: "1rem" }}
                  height="50"
                ></img>
                <img
                  src="https://www.nist.gov/libraries/nist-component-library/dist/img/logo/nist_logo_sidestack_rev.svg"
                  style={{ padding: "1rem" }}
                  height="50"
                ></img>
                <img
                  src="https://www.utoronto.ca/sites/all/themes/uoft_stark/img/U-of-T-logo.svg"
                  style={{ padding: "1rem" }}
                  height="60"
                ></img>
                <img
                  src="https://www.uni-koblenz-landau.de/logo.png"
                  style={{ padding: "1rem" }}
                  height="50"
                ></img>
                <img
                  src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Thermo_Fisher_Scientific_logo.svg/2560px-Thermo_Fisher_Scientific_logo.svg.png"
                  style={{ padding: "1rem" }}
                  height="50"
                ></img>
              </div>
              <br></br>
              <div
                style={{
                  padding: "0.75rem 1.3rem 0.75rem",
                  border: "double #f7f7f9",
                  backgroundColor: "rgb(0, 80, 240, 0.5)",
                  borderRadius: "50px",
                }}
              >
                <h4>Supporting ($100–$1,000)</h4>
                <h5>Jennifer Gadd</h5>
              </div>
              <br></br>
              <div
                style={{
                  padding: "0.75rem 1.3rem 0.75rem",
                  border: "double #f7f7f9",
                  backgroundColor: "rgb(140, 0, 128, 0.5)",
                  borderRadius: "50px",
                }}
              >
                <h4>Saving (&lt;$100)</h4>
                <h6>
                  Susanne Brander (Oregon State University), Jeremy Conkle
                  (TEXAS A&amp;M UNIVERSITY CORPUS CHRISTI)
                </h6>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div>
        <div style={{ padding: "1.2rem" }}></div>
        <div
          style={{
            padding: "1rem 1rem 1rem",
            border: "double #f7f7f9",
            backgroundColor: "rgb(220, 220  , 220, 0.1)",
          }}
          align="justify"
        >
          <h2>Quick Video Tutorial</h2>
          <iframe
            style={{
              padding: "1rem 1rem 1rem",
            }}
            width="500"
            height="300"
            src="https://www.youtube-nocookie.com/embed/w55WGtV2Dz4"
            title="YouTube video player"
            frameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen=""
          ></iframe>
        </div>
      </div>
      <div style={{ padding: "1.2rem" }}></div>
      <div
        style={{
          padding: "1rem 1rem 1rem",
          border: "double #f7f7f9",
          backgroundColor: "rgb(220, 220, 220, 0.1)",
        }}
      >
        <h2 data-testid="header2">Instructions</h2>
        <p class="setfontsize">
          In Brief: To use the tool upload a .csv, .asp, .jdx, .spc, or .spa file to
          the upload file tab. If .csv, one column should be named 'wavenumber'
          (in units of 1/cm) and another named 'intensity'. You can smooth your
          data using an SG filter, baseline correct your data using the
          polynomial order of iModPolyFit, and restrict the wavelength range for
          the match. The result will be compared to an internal Raman or FTIR
          spectra library. The strongest 1000 matches along with your uploaded
          or processed data will be presented in an interactive plot and table.
          For more details watch the detailed instructional video.
        </p>

        <iframe
          style={{
            padding: "1rem 1rem 1rem",
          }}
          width="500"
          height="300"
          src="https://www.youtube-nocookie.com/embed/JjhCdhjdcRY"
          title="YouTube video player"
          frameborder="0"
          allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
          allowfullscreen=""
        ></iframe>
      </div>

      <div style={{ padding: "1.2rem" }}></div>

      <div
        style={{
          padding: "1rem 1rem 1rem",
          border: "double #f7f7f9",
          backgroundColor: "rgb(220, 220, 220, 0.1)",
        }}
      >
        <h2 data-testid="header3">Download Open Data</h2>
        <p class="setfontsize">
          Reference spectra was sourced from open access resources online, peer
          reviewed publications, and corporate donations. In the future, spectra
          that is uploaded to the tool will be incorporated to the reference
          library to make it even better.
        </p>

        <div>
          <a
            id="downloadData4"
            class="btn btn-primary"
            href="raman_metadata.csv"
            target="_blank"
            download=""
            aria-live="polite"
          >
            Raman Reference Library Metadata
          </a>
          <a
            id="downloadData3"
            class="btn btn-primary"
            href="ftir_metadata.csv"
            target="_blank"
            download=""
            aria-live="polite"
          >
            FTIR Reference Library Metadata
          </a>
        </div>
      </div>

      <div style={{ padding: "1.2rem" }}></div>

      <div
        style={{
          padding: "1rem 1rem 1rem",
          border: "double #f7f7f9",
          backgroundColor: "rgb(220, 220, 220, 0.1)",
        }}
        align="justify"
      >
        <h2 data-testid="header4">Contribute Spectra</h2>
        <p class="setfontsize">
          To share spectra upload a file to the upload file tab. If you selected
          Share a copy of your spectra will be sent to the Community Data
          Warehouse on Open Science Framework. To add additional metadata, fill
          in the avaliable metadata fields and click -Share Data-. The spectra
          file that you uploaded along with your responses will be copied to the
          a -With Metadata- subfolder at the link below. All shared data holds a
          Creative Commons Attribution License 4.0.
        </p>
        <div>
          <a
            href="https://osf.io/rjg3c/"
            target="_blank"
            class="btn btn-primary"
          >
            Community Data Warehouse
          </a>
        </div>
      </div>

      <div style={{ padding: "1.2rem" }}></div>

      <div
        style={{
          padding: "1rem 1rem 1rem",
          border: "double #f7f7f9",
          backgroundColor: "rgb(220, 220, 220, 0.1)",
        }}
        align="justify"
      >
        <h2>Tool Validation</h2>
        <p class="setfontsize">
          All parameters in this tool are tested to validate that the tool is
          functioning as best as possible and determine the best default
          parameters to use. Our current validation proceedure includes
          correcting duplicated entries in the reference libraries, checking for
          spectra in metadata that isn't in the spectral library, and ensuring
          the the default parameters provide over 80% accuracy in the first
          match.
        </p>
        <div>
          <a
            href="https://docs.google.com/document/d/1Zd2GY4bWIwegGeE4JpX8O0S5l_IYju0sLDl1ddTTMxU/edit?usp=sharing"
            target="_blank"
            class="btn btn-primary"
          >
            Detailed Validation Procedure
          </a>
        </div>
      </div>

      <div style={{ padding: "1.2rem" }}></div>

      <div
        style={{
          padding: "1rem 1rem 1rem",
          border: "double #f7f7f9",
          backgroundColor: "rgb(220, 220, 220, 0.1)",
        }}
        align="justify"
      >
        <h2>Updates, Feature Requests, and Bug Reports</h2>
        <p class="setfontsize">
          We keep track of all updates using version control on our code.
          Features can be requested and bug reported on GitHub.
        </p>
        <div>
          <a
            href="https://github.com/wincowgerDEV/OpenSpecy"
            target="_blank"
            class="btn btn-primary"
          >
            Detailed Validation Procedure
          </a>
        </div>
      </div>

      <div style={{ padding: "1.2rem" }}></div>

      <div
        style={{
          padding: "1rem 1rem 1rem",
          border: "double #f7f7f9",
          backgroundColor: "rgb(220, 220, 220, 0.1)",
        }}
        align="justify"
      >
        <h2>Stay up to date!</h2>
        <p class="setfontsize">
          Follow us on Twitter @OpenSpecy. E-mail wincowger@gmail.com to be
          added to the mailing list.
        </p>
      </div>

      <div style={{ padding: "1.2rem" }}></div>

      <div
        style={{
          padding: "1rem 1rem 1rem",
          border: "double #f7f7f9",
          backgroundColor: "rgb(220, 220, 220, 0.1)",
        }}
        align="justify"
      >
        <h2>Citation</h2>
        <p class="setfontsize2">
          Cowger W, Steinmetz Z, Gray A, Munno K, Lynch J, Hapich H, Primpke S,
          De Frond H, Rochman C, Herodotou O. “Microplastic Spectral
          Classification Needs an Open Source Community: Open Specy to the
          Rescue!” <i>Analytical Chemistry</i>, <b>93</b>(21), 7543–7548. doi{" "}
          <a href="https://doi.org/10.1021/acs.analchem.1c00123">
            10.1021/acs.analchem.1c00123
          </a>
        </p>
      </div>
    </div>
  );
};

export default Mainpage;
