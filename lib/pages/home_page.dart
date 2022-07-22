import 'package:flutter/material.dart'; 

class HomePage extends StatefulWidget {
  static const routeName = 'home-page';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: Container(
          height: 150,
          width: 150,
          color: Colors.purple,
        ),
      ),
    );
    
  }
}