import 'package:flutter/material.dart';
import 'package:real_registration_ui_task/animations/fade_animation.dart';
import 'package:real_registration_ui_task/pages/home_page.dart';
import 'package:real_registration_ui_task/pages/sign_in_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static const String id = "sign_up_page";

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  _doSignUp() {
    String name = nameController.text;
    String email = emailController.text;
    String password = passwordController.text;

    if (name.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
      Navigator.pushReplacementNamed(context, HomePage.id);
    } else {
      print("No Informs");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeAnimation(
              1,
              Text(
                "Amazon",
                style: TextStyle(
                    fontSize: 45, color: Colors.black, fontFamily: 'Billabong'),
              ),
            ),

            //#name
            FadeAnimation(
              2,
              Container(
                height: 45,
                margin: EdgeInsets.only(right: 20, left: 20, top: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade200),
                child: TextField(
                  controller: nameController,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                      hintText: "Name",
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal))),
                ),
              ),
            ),

            //#email
            FadeAnimation(
              2,
              Container(
                height: 45,
                margin: EdgeInsets.only(right: 20, left: 20, top: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade200),
                child: TextField(
                  controller: emailController,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal))),
                ),
              ),
            ),

            //#password
            FadeAnimation(
              2,
              Container(
                height: 45,
                margin: EdgeInsets.only(right: 20, left: 20, top: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade200),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.teal))),
                ),
              ),
            ),

            //#button
            FadeAnimation(
              3,
              Container(
                width: double.infinity,
                height: 45,
                margin: EdgeInsets.only(right: 20, left: 20, top: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.deepOrange),
                child: FlatButton(
                  onPressed: () {
                    _doSignUp();
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),

            //#cross
            FadeAnimation(
                4,
                Container(
                  height: 45,
                  margin: EdgeInsets.only(right: 20, left: 20, top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        child: Text(
                          "Sign In",
                          style: TextStyle(fontSize: 17),
                        ),
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, SignInPage.id);
                        },
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
