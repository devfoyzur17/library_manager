// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart'; 

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
            leading:  Icon(Icons.home_sharp),
              title: Text("Home"),
          ),
          
            ListTile(
            leading:  Icon(Icons.dashboard),
              title: Text("Dashboard"),
          ),
  
            ListTile(
            leading:  Icon(Icons.notifications
            ),
              title: Text("Notification"),
          ),
             ListTile(
            leading:  Icon(Icons.notifications
            ),
              title: Text("Notification"),
          ),
            ListTile(
            leading:  Icon(Icons.notifications
            ),
              title: Text("Notification"),
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


          OutlinedButton(onPressed: (){}, child: Text("LogOut"))




          
          
        ],
      ),
    );
  }
}