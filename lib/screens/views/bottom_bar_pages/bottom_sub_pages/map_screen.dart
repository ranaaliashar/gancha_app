import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:gancha_app/constants/category_model.dart';
import 'package:gancha_app/screens/views/map_tab_bar_pages/cbd_screen.dart';
import 'package:gancha_app/screens/views/map_tab_bar_pages/dispensaries_screen.dart';
import 'package:gancha_app/screens/views/map_tab_bar_pages/doctors_screen.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme:const IconThemeData(color: Colors.black),
          title:const  Text("Map", style: TextStyle(color: Colors.black),),
           bottom:const TabBar(  
            
              tabs: [  
           Tab(  child: Text('Dispensaries', style: TextStyle(color: Colors.black),),),  
           Tab(  child: Text('CBD', style: TextStyle(color: Colors.black),),),  
           Tab(  child: Text('Doctors', style: TextStyle(color: Colors.black),),),  
                

              ],  
            ),  
        ),
        body:const TabBarView(children: [

          DispensariesScreen(),
          CBDScreen(),
          DoctorsScreen(),
        ],)
      ),
    );
  }
}