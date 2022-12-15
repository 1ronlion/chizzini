const express = require('express');
const router = express.Router();
const expertiseController = require('../controllers/expertiseController');


/* GET - home page. */

router.get('/', expertiseController.root);

/* GET - detail*/

router.get('/detail/:id/', expertiseController.detail);

/*CREATE*/

router.get('/redact',  expertiseController.redact);

router.post('/redact', expertiseController.create);


/*EDIT*/

router.get('/edit/:id/', expertiseController.edit);

router.put('/edit/:id/', expertiseController.update);

/*DELETE*/ 

router.get('/delete/:id/', expertiseController.delete);

router.delete('/delete/:id/', expertiseController.destroy);


module.exports = router;
