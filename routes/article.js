const express = require('express');
const router = express.Router();
const articleController = require('../controllers/articleController');


/* GET - home page. */

router.get('/', articleController.root);

/* GET - detail*/

router.get('/detail/:id/', articleController.detail);

/*CREATE*/

router.get('/redact',  articleController.redact);

router.post('/redact', articleController.create);


/*EDIT*/

router.get('/edit/:id/', articleController.edit);

router.put('/edit/:id/', articleController.update);

/*DELETE*/ 

router.get('/delete/:id/', articleController.delete);

router.delete('/delete/:id/', articleController.destroy);





module.exports = router;
