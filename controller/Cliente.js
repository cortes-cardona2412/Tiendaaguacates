import { Customer } from "../models/ClientModel.js";

const vistaCliente = (req, res) => {
  res.render(`auth/registroCliente`, {
    nameView: "Registro Cliente",
  });
};

const guardarcliente = async (req, res) => {
  const customer = await Customer.create(req.body);
  // res.json(customer);
  res.render("templates/clienteGuardado", {
    nameView: "Se ha guardado exitosamnete",
  });
};

export { vistaCliente, guardarcliente };
