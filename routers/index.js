import notFound from "../controllers/notFound.js";
import api_routers from "./api_routers.js";
import { Router } from "express";
const routers = Router();
//buat back end API routers
routers.use("/API", api_routers);
//buat router ke error 404 jika halaman tidak ditemukan
routers.use(notFound);

export default routers;