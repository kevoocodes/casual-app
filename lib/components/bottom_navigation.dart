import 'package:flutter/material.dart';
import '../screens/screen.dart'; //export all screen


class BottomNavigation extends StatefulWidget {
   static String routeName = 'BottomNavigation';
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  final _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const FavoriteScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: _screens[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedFontSize: 13.0,
          unselectedFontSize: 10.0,
          currentIndex: _selectedIndex,
         
          
          onTap: (i) => setState(() => _selectedIndex = i),
          items:   [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined,color: Colors.grey[600],),
            activeIcon: const Icon(Icons.home,color: Colors.white70,),
            //  backgroundColor: kSplashSceen,
            label: '',
      
            
            ),
    
             BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined, color: Colors.grey[600],),
            activeIcon: const Icon(Icons.search, color: Colors.white70,),
            //  backgroundColor: kSplashSceen,
            label: '', 
            ),
    
    
              BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, color: Colors.grey[600],),
            activeIcon: const Icon(Icons.favorite_outlined, color: Colors.white70,),
            //  backgroundColor: kSplashSceen,
            label: '',
      
            ),
    
              BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined, color: Colors.grey[600],),
            activeIcon: const Icon(Icons.person, color: Colors.white70,),
            //  backgroundColor: kSplashSceen,
            label: '',
            
            ),
        ]),
    );
  }
}