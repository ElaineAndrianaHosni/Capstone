"use strict";
import { _404, response_json } from "../../response_api/index.js";
const notFound_API = (req, res) => {
  response_json(_404, "API tidak ditemukan ", res);
};
export default notFound_API;
