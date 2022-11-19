import { Product } from "../models/ProductModel.js";

const vistaProducto = (req, res) => {
  res.render(`auth/registroProducto`, {
    nameView: "Registro Producto",
  });
};

const guardarProducto = async (req, res) => {
  const product = await Product.create(req.body);
  //res.json(product);
  res.render("templates/productoGuardado", {
    nameView: "Se guardo exitosamente",
  });
};

export { vistaProducto, guardarProducto };
