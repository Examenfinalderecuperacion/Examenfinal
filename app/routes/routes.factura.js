import { Router } from "express";

const rutaFactura = Router();

rutaFactura.get ("/factura/:id", () => {console.log("mostrar");})
rutaFactura.get ("/factura", () => {console.log("listar");})
rutaFactura.post ("/factura", () => {console.log("insertar");})
rutaFactura.put ("/factura", () => {console.log("actualizar");})
rutaFactura.delete ("/factura", () => {console.log("eliminar");})

export default rutaFactura;