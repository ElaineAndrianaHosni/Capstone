"use strict";
import ticket_model from "../../models/ticket_model.js";
import { Router } from "express";
import {
    ok,
    created,
    no_content,
    response_json,
} from "../../response_api/index.js";

const model = new ticket_model();
const ticket_api_controller = Router();
ticket_api_controller.get("/", (req, res) => {
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
ticket_api_controller.get("/:type", (req, res) => {
    let params = req.params;
    // console.log(params);
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
    }, params, [], [], "*,(SELECT name from concerts WHERE concertId=tickets.concertId) 'event_name'");
});

export default ticket_api_controller;
