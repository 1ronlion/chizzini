const express = require('express');
const router = express.Router();
const indexController = require('../controllers/indexController');


/* GET - home page. */

router.get('/', indexController.root);

/* GET - busqueda */

router.get('/busqueda', indexController.search);

/* GET - contacto */

router.get('/contact', indexController.aboutUs);



module.exports = router;

