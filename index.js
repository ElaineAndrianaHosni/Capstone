"use strict";
import express from "express";
import bodyParser from "body-parser";
import routers from "./routers/index.js";

const app = express();
const port = 8080;



//parse application/json
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

//set view engine
app.set("view engine", "ejs");

//memanggil semua part di public
app.use(express.static("public"));

//mengunakan file router esternal
app.use(routers);

app.listen(port);
