const express = require('express');
const router = express.Router();
const userController = require('../controllers/userController');



/* GET - home page. */

router.get('/', userController.root);

/* GET - login*/

router.get('/profile', userController.profile);

/*POST - login*/

router.post('/', userController.login);




module.exports = router;