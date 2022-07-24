import 'package:flutter/material.dart'; 
import 'package:library_manager/pages/home_page.dart';
import 'package:library_manager/pages/reader_page.dart';
import 'package:library_manager/widgets/app_drawer.dart';

class BottomNavBar extends StatefulWidget {
  static const routeName = 'bottom-nav-bar';
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
    int _selectedIndex = 0;
  List _widgetOptions = [
   const HomePage(),
   const ReaderPage(),
    Icon(Icons.add), 
    
  ];
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     
      drawer: AppDrawer(),

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/home.png"),
              ),
              label: 'Home',
            ),
           
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/reader.png",),
              ),
              label: 'Reader',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Favorite',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          unselectedItemColor: Color.fromARGB(255, 104, 103, 103),
          selectedItemColor: Colors.purple,
          // iconSize: 25,

          onTap: _onItemTapped,
          
          elevation: 10),
    );
  }
   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

}