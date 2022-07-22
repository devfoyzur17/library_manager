import 'package:flutter/material.dart'; 

 CustomAppbar(String title,  ) {
    return AppBar(
     // centerTitle: true,
     
        title: Text(title.toString()),

        actions: [
          if(title=="Library Managment")
       IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
        ],
        
 
      ); 
  }
