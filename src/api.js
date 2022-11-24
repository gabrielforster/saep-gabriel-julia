import { Router } from "express"

import areas from "./routes/areas.js";
import clientes from "./routes/clientes.js";
import concessionarias from "./routes/concessionarias.js";

const api = Router()

api.use("/areas", areas);
api.use("/clientes", clientes);
api.use("/concessionarias", concessionarias);

export default api;