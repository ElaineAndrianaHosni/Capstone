"use strict";
import { conn } from "../config/database.js";
export default class model {
    constructor(table) {
        this.tabel = table;
    }
    gets(callback, where = [], where_not = [], filter_field = [], values = "*") {
        let query = `SELECT ${values} FROM ${this.tabel}`;
        let queryWhere = "";
        let data_query = [];
        //filter search
        if (where.filter) {
            let queryFilter = "(";
            filter_field.forEach((field) => {
                data_query.push(field);
                data_query.push(`%${where.filter}%`);
                if (queryFilter != "(") queryFilter += " OR ";
                queryFilter += `?? LIKE ?`;
            });
            queryFilter += ")";
            queryWhere += queryWhere;
        }
        for (const key of Object.keys(where)) {
            if (queryWhere != "") queryWhere += ` AND `;
            if (
                key != "filter" &&
                key != "limit" &&
                key != "start" &&
                key != "order_by" &&
                key != "order"
            ) {
                data_query.push(key);
                data_query.push(where[key]);
                queryWhere += `?? = ?`;
            }
        }

        for (const key of Object.keys(where_not)) {
            if (queryWhere != "") queryWhere += ` AND `;
            data_query.push(key);
            data_query.push(where_not[key]);
            queryWhere += `?? != ?`;
        }

        if (queryWhere != "") query += ` WHERE ${queryWhere}`;
        if (where["order_by"] != undefined) {
            query += ` ORDER BY ${where["order_by"]}`;
            if (where["order"] != undefined) {
                query += ` ${where["order"]}`;
            }
        }

        if (where["limit"] != undefined) {
            query += ` LIMIT ?`;
            if (where["start"] != undefined) {
                query += ` , ?`;
                data_query.push(parseInt(where["start"]));
            }
            data_query.push(parseInt(where["limit"]));
        }

        const query_db = conn.query(query, Object.values(data_query), callback);
        console.log(query_db.sql);
    }

}
