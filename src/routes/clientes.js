import { Router } from "express";

import db from "../../db.js";

const router = Router();

router.get("/", async (req, res) => {
  try {
    const [clientes] = await db.query("SELECT * FROM clientes");

    res.json(clientes);
  } catch (error) {
    console.error(error);
  }
});

router.get("/:id", async (req, res) => {
  try {
    const [cliente] = await db.query("SELECT * FROM clientes WHERE id = ?", [
      req.params.id,
    ]);

    res.json(cliente);
  } catch (error) {
    console.error(error);
  }
});

export default router;
