const express = require("express");
const multer = require("multer");
const cors = require("cors");
const app = express();
app.use(cors());

var storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, "./public/uploads/");
  },
  filename: function (req, file, cb) {
    cb(null, file.originalname);
  },
});

var upload = multer({ storage: storage });

app.post("/upload", upload.single("file"), async (req, res) => {
  try {
    if (req.file) {
      res.send({
        status: true,
        message: "File Uploaded to server 5001.",
      });
    } else {
      res.status(400).send({
        status: false,
        data: "File Not Found :(",
      });
    }
  } catch (err) {
    res.status(500).send(err);
  }
});

app.use(express.static('public/graphs/'))

app.listen(5001, () => console.log("Server Running on 5001..."));
