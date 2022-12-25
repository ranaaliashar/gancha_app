import 'package:flutter/material.dart';


class MyDealsScreen extends StatefulWidget {
  const MyDealsScreen({super.key});

  @override
  State<MyDealsScreen> createState() => _MyDealsScreenState();
}

class _MyDealsScreenState extends State<MyDealsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const  SizedBox(height: 30,),
            const Text('Where are the deals?', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
            const  SizedBox(height: 50,),
            const Icon(Icons.favorite, color: Colors.blue, size: 120,),
            const  SizedBox(height: 30,),
        const    Padding(
              padding:  EdgeInsets.symmetric(horizontal: 14, ),
              child:  Text('Help us help you. Browse deals nearby and save your faves.',textAlign: TextAlign.center, style: TextStyle( fontSize: 16),),
            ),
            const  SizedBox(height: 30,),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 110,
              decoration:  BoxDecoration(
              // color: Colors.white,
              // shape: BoxShape.circle,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color:Colors.black),
              // boxShadow:const [
              //   BoxShadow(
              //     color: Colors.grey,
              //     offset: Offset(0.5, 1),
              //     spreadRadius: .15,
              //     blurRadius: .10,
              //   ),
              // ],
            ),
            child:const Text('Browse deals'),
            ),


          ],
        ),
      ),
    );
  }
}