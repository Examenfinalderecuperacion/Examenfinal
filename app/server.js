import express from "express";
import ruta from "./routes";

const app = express ();

// RUTA
app.use("/", ruta);

export default app;