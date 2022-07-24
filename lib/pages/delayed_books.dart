import 'package:flutter/material.dart';
import 'package:library_manager/widgets/custom_appbar.dart'; 

class DelayedBooksPage extends StatefulWidget {
  static const routeName = "delayed-books";
  const DelayedBooksPage({Key? key}) : super(key: key);

  @override
  State<DelayedBooksPage> createState() => _DelayedBooksPageState();
}

class _DelayedBooksPageState extends State<DelayedBooksPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppbar("Delayed Books"),
      drawer: Drawer(),

    );
    
  }
}