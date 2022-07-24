import 'package:flutter/material.dart';
import 'package:library_manager/pages/add_new_book_page.dart';
import 'package:library_manager/pages/dashbord_page.dart';
import 'package:library_manager/pages/library_members.dart';
import 'package:library_manager/pages/login_page.dart';
import 'package:library_manager/pages/home_page.dart';
import 'package:library_manager/pages/launcher_page.dart';
import 'package:library_manager/pages/reader_page.dart';
import 'package:library_manager/pages/sign_up_page.dart';
import 'package:library_manager/pages/splash_screen.dart';
import 'package:library_manager/providers/library_provider.dart';
import 'package:library_manager/widgets/bottom_nav_bar.dart';
 
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context)=>LibraryProvider())
    ],
  child: const MyApp()));
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
        ReaderPage.routeName : (context) => const ReaderPage(),
        DashbordPage.routeName : (context) => const DashbordPage(),
        AddNewBookPage.routeName : (context) => const AddNewBookPage(),
        LibraryMembers.routeName : (context) => const LibraryMembers(),

        
        
      },
    );
  }
}
 