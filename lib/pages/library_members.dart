import 'dart:io';
 
import 'package:flutter/material.dart';
import 'package:library_manager/providers/library_provider.dart';
import 'package:library_manager/widgets/app_drawer.dart';
import 'package:library_manager/widgets/custom_appbar.dart';
import 'package:provider/provider.dart';

class LibraryMembers extends StatefulWidget {
  static const routeName = "library-member";
  const LibraryMembers({Key? key}) : super(key: key);

  @override
  State<LibraryMembers> createState() => _LibraryMembersState();
}

class _LibraryMembersState extends State<LibraryMembers> {



  @override
  Widget build(BuildContext context) {

    Provider.of<LibraryProvider>(context,listen: false).getAllMembers();
    return Scaffold(
      appBar: CustomAppbar("Library Members",context),
      drawer:const AppDrawer(),
      body: Consumer<LibraryProvider>(

        builder: (context, provider,_) =>
            ListView.builder(

            itemCount: provider.memberList.length,
            itemBuilder: (context, index){
          return Card(
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(3.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                    child:  Image.file(File(provider.memberList[index].memberImage), height: 50,width: 50,fit: BoxFit.cover,)),
              ),
              title: Text(provider.memberList[index].memberName, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
              subtitle: Text(provider.memberList[index].memberEmail, style: const TextStyle(fontSize: 16),),
            ),
          );
        }),
      ),
    );
  }
}
