import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/custom_appbar.dart'; 

class ReaderPage extends StatefulWidget {
  static const routeName = 'reader-page';
  const ReaderPage({Key? key}) : super(key: key);

  @override
  State<ReaderPage> createState() => _ReaderPageState();
}

class _ReaderPageState extends State<ReaderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: CustomAppbar("Reader List"),
      drawer: AppDrawer(),
     
      
    );
    
  }
}