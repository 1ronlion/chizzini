const express = require('express');
const router = express.Router();
const teamController = require('../controllers/teamController');


/* GET - home page. */

router.get('/', teamController.root);

/* GET - detail*/

router.get('/detail/:id/', teamController.detail);

/*CREATE*/

router.get('/redact',  teamController.redact);

router.post('/redact', teamController.create);


/*EDIT*/

router.get('/edit/:id/', teamController.edit);

router.put('/edit/:id/', teamController.update);

/*DELETE*/ 

router.get('/delete/:id/', teamController.delete);

router.delete('/delete/:id/', teamController.destroy);


module.exports = router;
