import express from "express";
import bodyParser from "body-parser";
import * as url from "url";
const __dirname = url.fileURLToPath(new URL(".", import.meta.url));

const app = express();
app.use(express.json());
app.use(express.static(__dirname + "/app"));
app.use(bodyParser.urlencoded({
  extended: true
}));

app.get("/", (req, res) => {
  res.sendFile(__dirname + "/app/index.html");
});

import api from "./src/api.js";
app.use("/api", api);

app.listen(3000, () => {
  console.log("Server is running on port 3000");
});
