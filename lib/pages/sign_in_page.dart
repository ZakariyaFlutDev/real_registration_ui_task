import 'package:flutter/material.dart';
import 'package:real_registration_ui_task/animations/fade_animation.dart';
import 'package:real_registration_ui_task/pages/home_page.dart';
import 'package:real_registration_ui_task/pages/sign_up_page.dart';
class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  static const String id = "sign_in_page";

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  _doSignIn(){
    String email = emailController.text;
    String password = passwordController.text;

    if(email.isNotEmpty && password.isNotEmpty){
      Navigator.pushReplacementNamed(context, HomePage.id);
    }else{
      print("No informations");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeAnimation(1, Text("Amazon", style: TextStyle(color: Colors.black, fontSize: 45, fontFamily: 'Billabong'),),),


              //#email
              Container(
                height: 45,
                margin: EdgeInsets.only(right: 20, left: 20, top: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey.shade200
                ),
                child: TextField(
                  controller: emailController,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal))
                  ),
                ),
              ),

              //#password
              Container(
                height: 45,
                margin: EdgeInsets.only(right: 20, left: 20, top: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey.shade200
                ),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  style: TextStyle(fontSize: 16),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
                    hintText: "Password",
                  ),
                ),
              ),

              //#button
              Container(
                width: double.infinity,
                height: 45,
                margin: EdgeInsets.only(right: 20, left: 20, top: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepOrange
                ),
                child: FlatButton(
                  onPressed: (){
                    _doSignIn();
                  },
                  child: Text("Sign In", style: TextStyle(color: Colors.white, fontSize: 18),),
                ),
              ),

              //#cross
              Container(
                height: 45,
                margin: EdgeInsets.only(right: 20, left: 20, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Don't have an account?", style: TextStyle(fontSize: 16),),
                    SizedBox(width: 10,),
                    GestureDetector(
                      child: Text("Sign Up", style: TextStyle(fontSize: 17),),
                      onTap: (){
                        Navigator.pushReplacementNamed(context, SignUpPage.id);
                      },
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
