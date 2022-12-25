import 'package:flutter/material.dart';
import 'package:gancha_app/screens/auth/auth/welcome_screen.dart';
import 'package:gancha_app/screens/views/all_strains.dart';
import 'package:gancha_app/screens/views/bottom_bar_pages/strains_screen.dart';

import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType)=> MaterialApp(
        title: 'Gancha App',
        theme: ThemeData(
        
          primarySwatch: Colors.blue,
        ),
        home: const WelcomeScreen(),
      ),
    );
  }
}

