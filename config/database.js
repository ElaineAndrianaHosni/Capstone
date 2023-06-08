"use strict";
import mysql from "mysql";
const data_config = {
    host: "localhost",
    user: "root",
    password: "", //ganti klo beda password
    database: "konser", //ganti klo nama db beda
};
//create connection
export const conn = mysql.createConnection(data_config);

//cek connection
conn.connect((err) => {
    if (err) throw err;
    console.log("Mysql Terkoneksi");
});
