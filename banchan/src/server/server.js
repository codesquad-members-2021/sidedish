require("dotenv").config();
const express = require("express");
const app = express();
const bodyParser = require("body-parser");
const router = require("./routes/auth");
const cors = require("cors");

app.use(cors());
app.use(bodyParser.json());
app.use("/", router);
const port = 8080;

app.listen(port, () => console.log(`Listening on port ${port}`));
