// Proyecto con Express
const express = require('express');
const app = express();
const puerto = 3000;

app.get('/hola', (req, res) => {
    res.send('Hola mundo');
});

app.get('/tareas', (req, res) => {
    const listaTareas = [
        {id: 1, tarea: 'Levantarse a la mañana'},
        {id: 2, tarea: 'Estudiar'},
        {id: 3, tarea: 'Comer'},
    ];
    res.json(listaTareas);
});

app.listen(puerto, () => {
    console.log('Servidor Express en el puerto 3000');
});

// http://localhost:3000/hola
// http://localhost:3000/tareas