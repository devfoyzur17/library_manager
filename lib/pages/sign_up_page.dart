// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:library_manager/pages/login_page.dart'; 

class SignUpPage extends StatefulWidget {
  static const routeName ="sign-up";
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
            key: formKey,
            child: ListView(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(100))),
                  ),
                ),
                // Text(
                //   "Admin SignUP",
                //   textAlign: TextAlign.center,
                //   style: TextStyle(
                //       fontSize: 22,
                //       fontWeight: FontWeight.bold,
                //       letterSpacing: 1,
                //       wordSpacing: 2,
                //       fontStyle: FontStyle.italic),
                // ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "assets/images/sign.png",
                  height: 200,
                  width: 150,
                  fit: BoxFit.fitHeight,
                ),
                SizedBox(
                  height: 20,
                ),
                
                // todo This is name textField section
                  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: nameController,
                    style: TextStyle(
                        color: Colors.purple, fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffe6e6e6),
                        contentPadding: EdgeInsets.only(left: 10),
                        focusColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.account_circle_outlined,
                        ),
                        hintText: "Enter your full name",
                        hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.normal),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field must not be empty';
                      }
                      if (value.length > 20) {
                        return 'name must be in 20 character';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),

               

                // todo This is email textField section
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: emailController,
                    style: TextStyle(
                        color: Colors.purple, fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffe6e6e6),
                        contentPadding: EdgeInsets.only(left: 10),
                        focusColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.email,
                        ),
                        hintText: "Enter your email",
                        hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.normal),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field must not be empty';
                      }
                      if (value.length > 20) {
                        return 'name must be in 20 character';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),

                // todo this is password textField section
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                  child: TextFormField(
                    obscureText: _isObscure,
                    controller: passwordController,
                    style: TextStyle(
                        color: Colors.purple, fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xffe6e6e6),
                        contentPadding: EdgeInsets.only(left: 10),
                        focusColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.lock,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                        hintText: "Enter your password",
                        hintStyle: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.normal),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(20))),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'This field must not be empty';
                      }
                      if (value.length < 8) {
                        return 'password must be in 8 character';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),

                

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                  child: ElevatedButton(
                      onPressed: _chechValidet,
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                      child: Text(
                        "Sign UP",
                        style: TextStyle(fontSize: 16),
                      )),
                ),

                RichText(
                  textAlign: TextAlign.center,
            text: TextSpan(children: [
              TextSpan(
                text: 'You have account? ',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              TextSpan(
              text: ' Log In',
              style: TextStyle(color: Colors.purple, fontWeight: FontWeight.w500),
              
              recognizer: TapGestureRecognizer()
                ..onTap = () { 

                  Navigator.pushNamed(context, LoginPage.routeName);

                }),
            ]),
          ),
              ],
            )),
      ),
    );
    
  }

  void _chechValidet() {
    if (formKey.currentState!.validate()) {
       
      Navigator.pushReplacementNamed(context, LoginPage.routeName);
    }
  }
}