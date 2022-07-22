import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:library_manager/widgets/app_drawer.dart';
import 'package:library_manager/widgets/custom_appbar.dart';

class AddNewBookPage extends StatefulWidget {
  static const routeName = "add-new-book";
  const AddNewBookPage({Key? key}) : super(key: key);

  @override
  State<AddNewBookPage> createState() => _AddNewBookPageState();
}

class _AddNewBookPageState extends State<AddNewBookPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: CustomAppbar("Add New Book"),
   

    );
    
  }
}