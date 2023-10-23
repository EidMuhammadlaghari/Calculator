
const mongoose = require('mongoose');

const courseSchema = mongoose.Schema({
    title: {
        type: String,
        required: true,
        trim: true,
    },
    short_d: {
        type: String,
        required: true,

    },

    description_1: {
        type: String,
        required: true,
    },
    description_2: {
        type: String,
        required: true,
    },
    image: {
        type: String,
        required: true,
    },
    type: {
        type: String,
        required: true,
    }

}, { timestamps: true }
)
const courseModel = mongoose.model('course', courseSchema);
module.exports = courseModel;