"use strict";
import conserts_model from "../../models/conserts_model.js";
import { Router } from "express";
import {
    ok,
    created,
    no_content,
    response_json,
} from "../../response_api/index.js";

const model = new conserts_model();
const conserts_api_controller = Router();
conserts_api_controller.get("/", (req, res) => {
    // let params = req.params;
    // let where = req.query;
    model.gets((err, rows) => {
        if (err) {
            console.log(err);
        } else {
            if (rows.length > 0) {

                response_json(
                    ok,
                    rows,
                    res
                );

            } else response_json(no_content, "Data Tidak Tersedia", res); //kalau data tidak di temukan
        }
    });
});

export default conserts_api_controller;
