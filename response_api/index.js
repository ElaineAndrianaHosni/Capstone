"use strict";
//status code
export const ok = 200; // all data ok
export const created = 201; // berhasil menginput data
export const no_content = 204; //data tidak di temukan
export const _404 = 404; //bad request
export const forbiden = 403; //forbiden accses
export const unauthorized = 401; //unauthorized accses

//jika response valid
export const response_json = (status, values, res) => {
  let data = {
    status,
    values,
  };
  res.json(data);
  res.end();
};
