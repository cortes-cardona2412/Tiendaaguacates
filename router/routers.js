import express from "express";
import {
  guardarcliente,
  vistaCliente,
} from "../controller/Cliente.js";
import {
  guardarProducto,
  vistaProducto,
} from "../controller/Producto.js";
const router = express.Router();

router.get("/registroCliente", vistaCliente);
router.post("/registroCliente", guardarcliente);
router.get("/registroProducto", vistaProducto);
router.post("/registroProducto", guardarProducto);

export { router };
