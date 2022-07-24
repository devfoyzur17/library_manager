// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:library_manager/models/category_model.dart';
import 'package:library_manager/pages/all_books_category.dart';
import 'package:library_manager/providers/library_provider.dart';
import 'package:library_manager/widgets/app_drawer.dart';
import 'package:library_manager/widgets/category_item.dart';
import 'package:library_manager/widgets/custom_appbar.dart';
import 'package:library_manager/widgets/slider.dart';
import 'package:provider/provider.dart'; 

class HomePage extends StatefulWidget {
  static const routeName = 'home-page';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoryItemModel>? categoryItemList;

  @override
  void didChangeDependencies() {
      categoryItemList =  Provider.of<LibraryProvider>(context,listen: false).categoryItemList;
    super.didChangeDependencies();
  }
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
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Category", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,letterSpacing: 1),),
                TextButton(onPressed: (){
                  Navigator.pushNamed(context, AllBookCategoryPage.routeName);
                }, child: Text("View All>>"))
              ],
            ),

            SizedBox(height: 15,),

                 Container(
              height: 500,
              child: GridView.builder(
                
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 3 / 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemBuilder: (context, index) => CategoryItem(menuIcon: categoryItemList![index].image, menuTitle: categoryItemList![index].name, 
                  )
              
                  ),
            )


            
          ],
        ),
      )
    );
    
  }
}