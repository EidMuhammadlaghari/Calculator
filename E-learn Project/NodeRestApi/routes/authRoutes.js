

const express = require('express');
const { RegisterController, GetUserController, LoginController } = require('../controller/AuthController');
const { route } = require('./CourseRoutes');


const router = express.Router();

// Registration
router.post('/register', RegisterController);
// Login
router.post('/login', LoginController);

router.get(`/user-data/:email`, GetUserController);


module.exports = router;