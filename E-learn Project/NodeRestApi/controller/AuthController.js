const userModel = require("../models/user");
const { hashpassword, comparePassword } = require('../models/helper/authHelpers');
const { use } = require("../routes/CourseRoutes");

const RegisterController = async (req, res) => {
    try {
        //  to get value from react body
        const { name, email, dob, mobile, password } = req.body;
        //    filed validation

        if (!name) {
            return res.send({
                message: "Name is Required!"
            })
        }

        if (!dob) {
            return res.send({
                message: "Date of birth is Required!"
            })
        }
        if (!mobile) {
            return res.send({
                message: "Mobile no: is Required!"
            })
        }
        if (!email) {
            return res.send({
                message: "Email is Required!"
            })
        }

        if (!password) {
            return res.send({
                message: "Password is required",
            })
        }
        // if user already exists 
        const existUser = await userModel.findOne({ email: email })
        if (existUser) {
            return res.status(200).send({
                success: false,
                message: "Already register please use aother mail!"
            })
        }
        //  created a new user
        // const name = fname + lname;
        const hashedPassword = await hashpassword(password);

        const user = await userModel({ name, dob, email, mobile, password: hashedPassword })
        user.save();
        res.status(200).send({
            success: true,
            message: "User registered successfully!",
            user
        })

    } catch (error) {
        console.log(error);
        res.status(500).send({
            success: false,
            message: "Error in Registration",
            error,
        })
    }
}

const LoginController = async (req, res) => {
    try {
        const { email, password } = req.body;
        if (!email || !password) {
            return res.status(404).send({
                success: false,
                message: "Email or Password is Invalid"
            })
        }
        // console.log(email);
        const user = await userModel.findOne({ email })
        if (!email) {
            return res.status(404).send({
                success: false,
                message: 'Email is not exist'
            })
        }
        const match = await comparePassword(password, user.password)
        // console.log(password);
        if (!match) {
            return res.status(200).send({
                success: false,
                message: "Invalid Password",
            })
        }
        // const token = await jwt.sign({ _id: user._id }, 'xzyuvwrsfdgheakmnoeqiset', { expiresIn: '4d' });
        res.status(200).send({
            success: true,
            message: "Login successfully",
            user

        })
    } catch (error) {
        console.log(error);
        res.status(500).send({
            success: false,
            message: "Error in Login",
            error
        })
    }
}

const GetUserController = async (req, res) => {
    try {
        console.log(req.params.email);
        useremail = req.params.email;
        const user = await userModel.findOne({ email: useremail });
        console.log(user)
        res.status(200).send({
            success: true,
            message: "User fatched successfully!",
            user
        })
    } catch (error) {
        console.log(error);
    }
}


module.exports = {
    RegisterController,
    GetUserController,
    LoginController
}