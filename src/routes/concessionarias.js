import { Router } from "express";

import db from "../../db.js";

const router = Router();

router.get("/", async (req, res) => {
  try {
    const [concessionarias] = await db.query("SELECT * FROM concessionarias");

    res.json(concessionarias);
  } catch (error) {
    console.error(error);
  }
});

router.get("/:id", async (req, res) => {
  try {
    const [concessionaria] = await db.query(
      "SELECT * FROM concessionarias WHERE id = ?",
      [req.params.id]
    );

    res.json(concessionaria);
  } catch (error) {
    console.error(error);
  }
});

export default router;
