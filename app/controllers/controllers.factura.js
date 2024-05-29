import { pool } from "../config/mysql.db";

export const mostrarFactura = async(req, res)=>{
    const id = req.params["id"]
    try {
        const respuesta = await pool.query(`call SP_MOSTRAR_FACTURA(${id});`);
        res.json({"respuesta":respuesta})
    } catch (error) {
        res.json({"error":error})
    }
};
export const listarFactura = async(req, res)=>{
    try {const respuesta = await pool.query(`call SP_LISTAR_FACTURA();`);
    res.json({"respuesta":respuesta})
        
    } catch (error) {
        res.json({"error":error})
    }
};
export const insertarFactura  = async(req, res)=>{
    const descripcion = req.params["descripcion"]
    try {const respuesta = await pool.query(`call SP_AGREGAR_FACTURA(${descripcion});`);
    res.json({"respuesta":respuesta})
        
    } catch (error) {
        res.json({"error":error})
    }
};
export const editarFactura  = (req, res)=>{
    res.json({"respuesta":"editarFactura "})
};
export const eliminarFactura  = async(req, res)=>{
    const id = req.params["id"]
    try {const respuesta = await pool.query(`call SP_ELIMINAR_FACTURA(${id});`);
    res.json({"respuesta":respuesta})
        
    } catch (error) {
        res.json({"error":error})
    }
};