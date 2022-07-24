// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart'; 
import 'package:library_manager/widgets/app_drawer.dart';
import 'package:library_manager/widgets/custom_appbar.dart';
import 'package:provider/provider.dart';

import '../models/category_model.dart';
import '../providers/library_provider.dart';
import '../widgets/category_item.dart';

class AllBookCategoryPage extends StatefulWidget {
  static const routeName = "all-book-category";
  const AllBookCategoryPage({Key? key}) : super(key: key);

  @override
  State<AllBookCategoryPage> createState() => _AllBookCategoryPageState();
}

class _AllBookCategoryPageState extends State<AllBookCategoryPage> {
    List<CategoryItemModel>? categoryItemList;

  @override
  void didChangeDependencies() {
      categoryItemList =  Provider.of<LibraryProvider>(context).categoryItemList;
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar("Category"),
        

      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.builder(
                  
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: categoryItemList!.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 5 / 6,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20),
                    itemBuilder: (context, index) => CategoryItem(menuIcon: categoryItemList![index].image, menuTitle: categoryItemList![index].name, 
                    )
                
                    ),
      ),

    );
  }
}