// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:library_manager/auth_pref.dart';
import 'package:library_manager/pages/dashbord_page.dart';
import 'package:library_manager/pages/home_page.dart';
import 'package:library_manager/pages/login_page.dart';
import 'package:library_manager/widgets/bottom_nav_bar.dart'; 

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, 
        children: [
         UserAccountsDrawerHeader(
          currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "assets/images/man.png",
                    fit: BoxFit.cover,
                  ),
                ),
          accountName:const Text("Foyzur Rahaman"),
          accountEmail: const Text("foyzur17@gmail.com"),
         
          ),

          ListTile(
            onTap: (){
              Navigator.pushNamed(context, BottomNavBar.routeName);
            },
            leading:  Icon(Icons.home_sharp),
              title: Text("Home"),
          ),
          
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, DashbordPage.routeName);
              },
            leading:  Icon(Icons.dashboard),
              title: Text("Dashboard"),
          ),
  
            ListTile(
            leading:  Icon(Icons.my_library_books
            ),
              title: Text("About Library"),
          ),
             ListTile(
            leading:  Icon(Icons.notifications
            ),
              title: Text("Notification"),
          ),
             ListTile(
            leading:  Icon(Icons.mode_edit_outline_outlined
            ),
              title: Text("Update Admin Info"),
          ),
         
         
            ListTile(
            leading:  Icon(Icons.location_on
            ),
              title: Text("Library Location"),
          ),
         
            ListTile(
            leading:  Icon(Icons.settings_outlined
            ),
              title: Text("Setting"),
          ),
          Divider(),


          OutlinedButton(
             style: OutlinedButton.styleFrom(
              primary: Colors.purple,
               side: BorderSide(color: Colors.purple),
               shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
               )
             ),
            onPressed: (){

              setLogInStatus(false);
              Navigator.pushReplacementNamed(context, LoginPage.routeName);
              


          }, child: Text("LogOut"))




          
          
        ],
      ),
    );
  }
}