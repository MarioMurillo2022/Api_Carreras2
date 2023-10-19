const express = require('express');
const apiCarreras = express();
const db = require('../database/conn');

apiCarreras.get('', async (req, res) => {

    let sql = 'select * from tbl_api_carreras';
    const result = await db.query(sql);
    res.json(result);

});

module.exports = apiCarreras;