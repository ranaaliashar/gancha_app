import 'package:flutter/material.dart';
import 'package:gancha_app/screens/views/bottom_bar_pages/bottom_sub_pages/deals_screen.dart';
import 'package:gancha_app/screens/views/bottom_bar_pages/home_screen.dart';
import 'package:gancha_app/screens/views/bottom_bar_pages/search_screen.dart';
import 'package:gancha_app/screens/views/bottom_bar_pages/strains_screen.dart';
import 'package:gancha_app/utils/colors.dart';
import 'package:gancha_app/widgets/custom_drawer.dart';



class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
    int pageIdx =0;
List<Widget> pages=[
  const HomeScreen(),
  const UserSearchScreen(),
  const DealsScreen(),
  const StrainsScreen(),
];
 
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme:const IconThemeData(color: Colors.black),
        elevation: 0,
        title: Image.asset('assets/logo.png'),
      ),
      
      drawer:const CustomDrawer(),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (idx){
          setState(() {
            pageIdx = idx;
          });
        },
        currentIndex: pageIdx,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: appThemeColor,
        unselectedItemColor: blackColor,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,            
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            label: 'Search',
          ),
           BottomNavigationBarItem(
            icon: Icon(
              Icons.discount_outlined,
              size: 30,
            ),
            label: 'Deals',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.diamond,
              size: 30,
            ),
            label: 'Strains',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(
          //     Icons.person,
          //     size: 30,
          //   ),
          //   label: 'Profile',
          // ),
        ],
      ),
      body: pages[pageIdx],
    );


  }
}