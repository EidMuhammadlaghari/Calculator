import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginForm extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> LoginUser(String email, String password) async {
    var response = await http
        .post(Uri.parse("http://10.11.75.60:4000/api/v1/auth/login"), body: {
      "email": email,
      "password": password,
    });
  }

  void Submit_form() {
    if (_formKey.currentState!.validate()) {
      String email = emailController.text;
      String password = passwordController.text;

      LoginUser(email, password);
      UserInfosave();
    }
  }

  void UserInfosave() async {
    SharedPreferences user = await SharedPreferences.getInstance();
    user.setString("email", emailController.text);
    user.setString("password", passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/login.png'), fit: BoxFit.cover)),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 15.0),
                child: Text(
                  "Let's Start your Journey".toUpperCase(),
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 130,
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
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Column(
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
                                  Navigator.of(context).pushNamed(
                                      '/user-dashboard',
                                      arguments: emailController.text);
                                  Submit_form();
                                },
                                // },
                                child: const Text("Login")),
                            const SizedBox(
                              height: 30.0,
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed('/register');
                                },
                                child: Text(
                                  'Create your account',
                                  style: TextStyle(
                                      color: Colors.blue.shade400,
                                      fontSize: 18.0),
                                ))
                          ],
                        ),
                      ),
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
