const mongoose = require('mongoose');
const dotenv = require('dotenv');
const colors = require('colors');


dotenv.config();
mongoose.set('strictQuery', false);
mongoose.connect('mongodb://127.0.0.1:27017/eLearn',
    {
        useNewUrlParser: "true",
        useUnifiedTopology: "true"
    })
    .then(() => {
        console.log('Connection created successfully ...'.bgGreen.white)
    }).catch((err) => {
        console.log(`${err} occurs`.bgRed.white)
    })