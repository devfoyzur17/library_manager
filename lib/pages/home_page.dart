// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:library_manager/widgets/app_drawer.dart';
import 'package:library_manager/widgets/category_item.dart';
import 'package:library_manager/widgets/custom_appbar.dart';
import 'package:library_manager/widgets/slider.dart'; 

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
      appBar: CustomAppbar("Library Managment"),
      drawer: AppDrawer(),
     
      body: Container(
        margin: EdgeInsets.only(left: 15, right: 15),
        child: ListView(
          children: [
            TopSlider(),
            
            Text("Category", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,letterSpacing: 1),),

            SizedBox(height: 15,),

            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder:  (context, index) => CategoryItem(menuIcon: 'assets/images/books.png', menuTitle: "History") ),
            )


            
          ],
        ),
      )
    );
    
  }
}