import 'package:flutter/material.dart';
import 'package:library_manager/pages/login_page.dart';
import 'package:library_manager/pages/home_page.dart';
import 'package:library_manager/pages/launcher_page.dart';
import 'package:library_manager/pages/reader_page.dart';
import 'package:library_manager/pages/sign_up_page.dart';
import 'package:library_manager/pages/splash_screen.dart';
import 'package:library_manager/widgets/bottom_nav_bar.dart';

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
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName :(context) => const SplashScreen(),
        Launcher_page.routeName : (context)=> const Launcher_page(),
        LoginPage.routeName : (context) => const LoginPage(),
        SignUpPage.routeName :(context) => const SignUpPage(),
        BottomNavBar.routeName : (context) => const BottomNavBar(),
        HomePage.routeName :(context) => const HomePage(),
        ReaderPage.routeName : (context) => const ReaderPage()
        
      },
    );
  }
}
 