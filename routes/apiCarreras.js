const express = require('express');
const apiCarreras = express();
const db = require('../database/conn');

apiCarreras.get('', async (req, res) => {

    let sql = 'select * from tbl_api_carreras';
    const result = await db.query(sql);
    res.json(result);

});

apiCarreras.post('', async (req, res) => {


    const params = [
        req.body.nombre,
        req.body.equipo,
        req.body.nombre,
        req.body.mejor_puesto,
        req.body.victorias,
        req.body.poles,
        req.body.tiempo,
        req.body.fecha
    ];

    let sql = `insert into
    tbl_api_carreras(nombre, equipo, mejor_puesto, victorias, poles, tiempo, fecha) 
    values ($1,$2,$3,$4,$5,$6,$7)
    returning * `;
    const result = await db.query(sql, params);
    res.json(result);

});


module.exports = apiCarreras;