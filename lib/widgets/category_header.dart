import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_manager/pages/view_all_books.dart';

import '../pages/all_books_category.dart';

class CategoryHeader extends StatelessWidget {
  final String title;
  const CategoryHeader({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,letterSpacing: 1,color: Colors.purple),),
        TextButton(onPressed: (){
          Navigator.pushNamed(context, ViewAllBooks.routeName);
        }, child: Text("View All>>", style: TextStyle(color: Colors.grey),))
      ],
    );
  }
}
