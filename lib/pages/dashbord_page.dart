// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:library_manager/pages/add_member.dart';
import 'package:library_manager/pages/add_new_book_page.dart';
import 'package:library_manager/pages/check_valid_member_page.dart';

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

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            SizedBox(height: 10,),

            Row(
              children: [
                 Expanded(
                   child: Card(
                               elevation: 5,
                               shadowColor: Colors.purple.withOpacity(0.5),
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(20)
                               ),
                               child: ListTile(

                                contentPadding: EdgeInsets.all(10),
                                title: Image.asset("assets/images/boo.png", height: 50,),

                                subtitle: Column(
                                  children: [
                                    SizedBox(height: 15,),
                                    Text("Total 86 Books",textAlign: TextAlign.center,),
                                  ],
                                ),
                               ),
                            
                                 
                               
                             ),
                 ),
                    Expanded(
                   child: Card(
                               elevation: 5,
                               shadowColor: Colors.purple.withOpacity(0.5),
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(20)
                               ),
                               child: ListTile(

                                contentPadding: EdgeInsets.all(10),
                                title: Image.asset("assets/images/reade.png", height: 50,),

                                subtitle: Column(
                                  children: [
                                    SizedBox(height: 15,),
                                    Text("Total 86 Reader",textAlign: TextAlign.center,),
                                  ],
                                ),
                               ),
                            
                                 
                               
                             ),
                 ),

              ],
            ),

            Divider(),
            

            Card(
              elevation: 5,
              shadowColor: Colors.purple.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 25),

                title: Text("Add new books to the library",textAlign: TextAlign.center,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,letterSpacing: 1,wordSpacing: 1),),
                 
                subtitle: Column(
                  children: [
                    SizedBox(height: 25,),
                    InkWell(
                       onTap: (){

                        Navigator.pushNamed(context, AddNewBookPage.routeName);

                      },
                      child: Image.asset("assets/images/book.png", height: 100,)),
                  ],
                ),
                
              ),
            ),

               Card(
              elevation: 5,
              shadowColor: Colors.purple.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 25),

                title: Text("Add new reader to the library",textAlign: TextAlign.center,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,letterSpacing: 1,wordSpacing: 1),),
                 
                subtitle: Column(
                  children: [
                    SizedBox(height: 25,),
                    InkWell(
                      onTap: (){

                        Navigator.pushNamed(context, CheckValidMemberPage.routeName);

                      },
                      child: Image.asset("assets/images/add_user.png", height: 100,)),
                  ],
                ),
                
              ),
            ),

             Card(
              elevation: 5,
              shadowColor: Colors.purple.withOpacity(0.5),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(vertical: 25),

                title: Text("Add new member to the library",textAlign: TextAlign.center,style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,letterSpacing: 1,wordSpacing: 1),),
                 
                subtitle: Column(
                  children: [
                    SizedBox(height: 25,),
                    InkWell(
                      onTap: (){

                       Navigator.pushNamed(context, AddMember.routeName);

                      },
                      child: Image.asset("assets/images/addmember.png", height: 100,)),
                  ],
                ),
                
              ),
            )

        

          ],
        ),
      ),
  
       
    );
    
    
  }
}