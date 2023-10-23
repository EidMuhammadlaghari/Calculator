

const express = require('express');
const { StoredController, GetcourseController } = require('../controller/CourseController');


const router = express.Router();


router.post('/stored-data', StoredController);

router.get('/fatch-data/:course', GetcourseController);


module.exports = router;