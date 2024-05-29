import { Router } from "express";
import { editarFactura, eliminarFactura, insertarFactura, listarFactura, mostrarFactura, mostrarProducto } from "../controllers/controllers.factura";

const rutaFactura = Router();

rutaFactura.get ("/factura/:id", mostrarFactura);
rutaFactura.get ("/factura", listarFactura);
rutaFactura.post ("/factura", insertarFactura);
rutaFactura.put ("/factura", editarFactura);
rutaFactura.delete ("/factura", eliminarFactura);

export default rutaFactura;