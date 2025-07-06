
const express = require("express");
const app = express();
app.get("/", (req, res) => res.send("¡Hola desde Azure App Service con Docker!"));
app.listen(3000, () => console.log("App corriendo en puerto 3000"));
