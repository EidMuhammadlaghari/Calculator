import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

class RegisterForm extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController cnicController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> setDataToApi(String name, String email, String dob,
      String mobile, String password) async {
    var response = await http.post(
      Uri.parse('http://10.11.75.60:4000/api/v1/auth/register'),
      body: {
        'name': name,
        'email': email,
        'dob': dob,
        'mobile': mobile,
        'password': password,
      },
    );
    if (response.statusCode == 200) {
      print('Registration successful');
    } else {
      print("Something went wrong");
    }
  }

  void Submit_form() {
    if (_formKey.currentState!.validate()) {
      String name = nameController.text;
      String email = emailController.text;
      String dob = cnicController.text;
      String phone = phoneController.text;
      String password = passwordController.text;

      setDataToApi(name, email, dob, phone, password);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/register.png'), fit: BoxFit.cover)),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Join to grow up'.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 10, bottom: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextFormField(
                        controller: nameController,
                        keyboardType: TextInputType.text,
                        style: const TextStyle(
                            color: Colors.black, fontSize: 18.0),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: const BorderSide(
                                color: Colors.black,
                              )),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                          labelText: "Enter Name",
                          //hint text style
                          labelStyle: const TextStyle(
                              fontSize: 18.0,
                              color: Colors.black), //label style
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.text,
                        style: const TextStyle(
                            color: Colors.black, fontSize: 18.0),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: const BorderSide(
                                color: Colors.black,
                              )),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                          labelText: "Enter Email",
                          //hint text style
                          labelStyle: const TextStyle(
                              fontSize: 18.0,
                              color: Colors.black), //label style
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: cnicController,
                        keyboardType: TextInputType.text,
                        style: const TextStyle(
                            color: Colors.black, fontSize: 18.0),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: const BorderSide(
                                color: Colors.black,
                              )),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                          labelText: "Enter Mobile No:",
                          //hint text style
                          labelStyle: const TextStyle(
                              fontSize: 18.0,
                              color: Colors.black), //label style
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        controller: phoneController,
                        keyboardType: TextInputType.text,
                        style: const TextStyle(
                            color: Colors.black, fontSize: 18.0),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: const BorderSide(
                                color: Colors.black,
                              )),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: const BorderSide(color: Colors.black),
                          ),
                          labelText: "Date of Birth",
                          //hint text style
                          labelStyle: const TextStyle(
                              fontSize: 18.0,
                              color: Colors.black), //label style
                        ),
                        validator: (String? value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                          controller: passwordController,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 18.0),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                borderSide: const BorderSide(
                                  color: Colors.black,
                                )),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                            labelText: "Enter Password",
                            //hint text style
                            labelStyle: const TextStyle(
                                fontSize: 18.0,
                                color: Colors.black), //label style
                          ),
                          validator: (String? value) {
                            RegExp regex = RegExp(
                                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                            if (value == null || value.isEmpty) {
                              return "Please enter Password";
                            } else if (!regex.hasMatch(value)) {
                              return '''Password must contain alteast 1 number,
                                    1 uppercase letter,
                                    1 lowercase letter,
                                    1 special character
                                    and must be 8 characters long
                                     ''';
                            }
                            return null;
                          }),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Theme.of(context).primaryColor),
                                fixedSize:
                                    MaterialStateProperty.all(Size(150, 40)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        30.0), // Set the border radius here
                                  ),
                                ),
                              ),
                              onPressed: () {
                                // if (keys.currentState!.validate()) {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content:
                                          const Text("Your Account Created!  "),
                                      actions: [
                                        TextButton(
                                          child: const Text('Login'),
                                          onPressed: () {
                                            Navigator.of(context).pushNamed(
                                                '/login',
                                                arguments: [
                                                  //   nameController.text,
                                                  //   emailController.text,
                                                  //   cnicController.text,
                                                  //   phoneController.text,
                                                  passwordController.text,
                                                ]);
                                            Submit_form();
                                          },
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                              // },

                              child: const Text(
                                "Register",
                                style: TextStyle(fontSize: 20.0),
                              )),
                          const SizedBox(
                            height: 10.0,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed('/login');
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.blue.shade400, fontSize: 18),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
