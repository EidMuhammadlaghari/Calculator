const courseModel = require("../models/course");
const userModel = require("../models/course");

const StoredController = async (req, res) => {
    try {
        //  to get value from react body

        const { title, short_d, description_1, description_2, image, type } = req.body;
        //    filed validation

        if (!title) {
            return res.send({
                message: "Course title is Required!"
            })
        }
        if (!short_d) {
            return res.send({
                message: "Short description is Required!"
            })
        }
        if (!description_1) {
            return res.send({
                message: "Description is Required!"
            })
        }
        if (!description_2) {
            return res.send({
                message: "Description is Required!"
            })
        }
        if (!image) {
            return res.send({
                message: "Image is Required!"
            })
        }

        if (!type) {
            return res.send({
                message: "type is required",
            })
        }
        // if user already exists 
        // const existUser = await userModel.findOne({ title: req.body.title })
        // if (existUser) {
        //     return res.status(200).send({
        //         success: false,
        //         message: "Already please Enter another topic!"
        //     })
        // }
        //  created a new user
        // const name = fname + lname;
        const topic = await courseModel({ title, short_d, description_1, description_2, image, type })
        topic.save();
        res.status(200).send({
            success: true,
            message: "Topic Added successfully!",
            topic
        })

    } catch (error) {
        console.log(error);
        res.status(500).send({
            success: false,
            message: "Error in uploading data",
            error,
        })
    }
}

const GetcourseController = async (req, res) => {
    try {
        titles = req.params.course;
        console.log(req.params.course);
        const topic = await courseModel.find({ type: req.params.course });
        console.log(topic)
        res.status(200).send({
            success: true,
            message: "Data fatched successfully!",
            topic
        })
    } catch (error) {
        console.log(error);
    }
}


module.exports = {
    StoredController,
    GetcourseController
}