import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/app_drawer.dart';
import '../widgets/custom_appbar.dart';

class DashbordPage extends StatefulWidget {
  static const routeName = "sashbord-page";
  const DashbordPage({Key? key}) : super(key: key);

  @override
  State<DashbordPage> createState() => _DashbordPageState();
}

class _DashbordPageState extends State<DashbordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: CustomAppbar("Dashbord"),
      drawer: AppDrawer(),
     
       
    );
    
  }
}