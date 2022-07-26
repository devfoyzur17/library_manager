 
import 'package:flutter/material.dart';
import 'package:library_manager/widgets/custom_appbar.dart';

class ViewAllBooks extends StatefulWidget {
  static const routeName ="view-all-books";
  const ViewAllBooks({Key? key}) : super(key: key);

  @override
  State<ViewAllBooks> createState() => _ViewAllBooksState();
}

class _ViewAllBooksState extends State<ViewAllBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar("Books"),

    );
  }
}
