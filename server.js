// server.js
const express = require('express');
const app = express();


app.get('/', (req, res) => {
  res.send('¡Prueba para determinar si funciona !');
});

const PORT = process.env.PORT || 8080;

app.listen(PORT, () => {
  console.log(`Servidor escuchando en el puerto ${PORT}`);
});

