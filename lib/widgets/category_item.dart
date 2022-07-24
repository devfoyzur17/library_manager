
// ignore_for_file: sort_child_properties_last
 
import 'package:flutter/material.dart'; 

class CategoryItem extends StatefulWidget {
  final String menuIcon;
  final String menuTitle;
 
  const CategoryItem({Key? key, required this.menuIcon, required this.menuTitle }) : super(key: key);

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7), 
      
      height: 120,
      width: 90,
      child: Container(
        padding: EdgeInsets.all(6),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(widget.menuIcon,height: 35,fit: BoxFit.fitHeight,),
            Text(widget.menuTitle,textAlign: TextAlign.center, style: TextStyle(fontSize: 10,color: Colors.purple,fontWeight: FontWeight.w500),)
          ],
        ),
        
        decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(60),
           color: Colors.purple.withOpacity(0.1)

        ),

      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purple,width: 1),
        borderRadius: BorderRadius.circular(60)
      ),
    );
    
  }
}