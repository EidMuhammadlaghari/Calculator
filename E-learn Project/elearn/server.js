const express = require('express');
const colors = require('colors');
const dotenv = require('dotenv')
const authRoutes = require('./routes/authRoutes')
const CourseRoutes = require('./routes/CourseRoutes')
const bodyParser = require('body-parser');

const PORT = 4000;
const cors = require("cors");
dotenv.config();
const app = express();

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());


require('./config/db');
app.use(express.json())
app.use(cors());


// users api
app.get('/', (req, res) => {
    res.send('hello world from backend server')
})

// auth routes
app.use('/api/v1/auth', authRoutes)
app.use('/api/v1/course-detail', CourseRoutes)

app.listen(PORT, () => {
    console.log(`server running in the development mood at port ${PORT}`.green.inverse)
})