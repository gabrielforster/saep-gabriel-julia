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

router.get("/vendas/:id", async (req, res) => {
  try {
    const [result] = await db.query(
      "SELECT * FROM automoveis_alocacao WHERE id = ?", [req.params.id]
    );

    await db.query(`UPDATE automoveis_alocacao SET quantidade = ${result[0].quantidade - 1} WHERE id = ?`, [req.params.id])

    res.status(200)
  } catch (error) {
    console.error(error)
  }
});


export default router;
