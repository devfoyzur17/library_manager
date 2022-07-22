// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  static const routeName = 'login-page';
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
 

  @override
  void dispose() {
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
                     Text(
                  "Admin Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "assets/images/login.png",
                  height: 220,
                  width: 220,
                  fit: BoxFit.fitHeight,
                ),
                SizedBox(
                  height: 20,
                ),
           
                // todo This is email textField section
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: passwordController,
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
                  padding: const EdgeInsets.only(top: 8,left: 8,right: 8),
                  child: TextFormField(
                    obscureText: _isObscure,
                    controller: emailController,
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
                      if (value.length > 8) {
                        return 'password must be in 8 character';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),

                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(onPressed: (){}, child: Text("forget password?",))),

                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 20),
                     child: ElevatedButton(onPressed: (){},
                     
                     style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          
                          RoundedRectangleBorder(
                            
                            borderRadius: BorderRadius.circular(20)
                          )
                        )
                     ),
                      child: Text("LogIn", style: TextStyle(fontSize: 16),)),
                   )
              ],
            )),

        // Spacer(),
      ),
    );
  }
}
