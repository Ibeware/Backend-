const express = require("express");
const router = express.Router();
const controllerTarea = require("../controllers/tareasController");


router.post("/tareas", controllerTarea.insert);
router.put("/tareas/:id", controllerTarea.update)

module.exports = router;