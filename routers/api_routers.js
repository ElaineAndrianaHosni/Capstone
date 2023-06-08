import { Router } from "express";
import conserts_api_controller from "../controllers/API/conserts.js";

import notFound_API from "../controllers/API/notFound_API.js";


const api_routers = Router();
api_routers.use("/conserts", conserts_api_controller)
api_routers.use(notFound_API);

export default api_routers;