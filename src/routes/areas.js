import { Router } from "express";

import db from "../../db.js";

const router = Router();

router.get("/", async (req, res) => {
  try {
    const [areas] = await db.query("SELECT * FROM automoveis_alocacao");

    res.json(areas);
  } catch (error) {
    console.error(error);
  }
});

router.get("/:area", async (req, res) => {
  try {
    const [area] = await db.query(
      "SELECT * FROM automoveis_alocacao WHERE area = ?",
      [req.params.area]
    );

    res.json(area);
  } catch (error) {
    console.error(error);
  }
});

export default router;
