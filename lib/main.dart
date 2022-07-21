import 'package:flutter/material.dart';
import 'package:library_manager/pages/LoginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: LoginPage.routeName,
      routes: {
        LoginPage.routeName : (context) => const LoginPage(),
      },
    );
  }
}
 