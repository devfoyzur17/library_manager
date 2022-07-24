import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:library_manager/widgets/app_drawer.dart';
import 'package:library_manager/widgets/custom_appbar.dart';
import 'package:provider/provider.dart';

import '../models/category_model.dart';
import '../providers/library_provider.dart';

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
      drawer: AppDrawer(),

      body: ListView.builder(
        itemCount: categoryItemList!.length,
        itemBuilder: (context,index){
        return Card(
          elevation: 1,
          child: ListTile(
            leading: Image.asset(categoryItemList![index].image,height: 30,),
            title: Text(categoryItemList![index].name, style: TextStyle(color: Colors.deepOrange, fontWeight: FontWeight.w500, letterSpacing: 1),),
            
          ),
        );
      }),

    );
  }
}