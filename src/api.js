import { Router } from "express"

import areas from "./routes/areas.js";
import clientes from "./routes/clientes.js";

const api = Router()

api.use("/areas", areas);
api.use("/clientes", clientes);

export default api;