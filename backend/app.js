
const express = require("express");
const cors = require("cors");
require("dotenv").config();

const app = express();

app.use(cors());
app.use(express.json());

// Ruta de comprobación para verificar que la API responde
app.get("/api/health", (req, res) => {
    res.status(200).json({
        status: "ok",
        message: "API funcionando correctamente"
    });
});

// Importamos rutas
const pacienteRoutes = require("./routes/pacienteRoutes");
const authRoutes = require("./routes/authRoutes");
const citasRoutes = require("./routes/citasRoutes");
const medicosRoutes = require("./routes/medicosRoutes");

// Usamos rutas
app.use("/api/medicos", medicosRoutes);
app.use("/api/paciente", pacienteRoutes);
app.use("/api", authRoutes);
app.use("/api/citas", citasRoutes);

// Iniciamos el servidor solamente cuando ejecutamos app.js directamente
if (require.main === module) {
    const PORT = process.env.PORT || 3000;

    app.listen(PORT, () => {
        console.log(`Servidor corriendo en ${PORT}`);
    });
}

// Exportamos la aplicación para las pruebas automatizadas
module.exports = app;
