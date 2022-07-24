import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_manager/widgets/app_drawer.dart';
import 'package:library_manager/widgets/custom_appbar.dart';

class LibraryMembers extends StatefulWidget {
  static const routeName = "library-member";
  const LibraryMembers({Key? key}) : super(key: key);

  @override
  State<LibraryMembers> createState() => _LibraryMembersState();
}

class _LibraryMembersState extends State<LibraryMembers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar("Library Members"),
      drawer: AppDrawer(),
    );
  }
}
