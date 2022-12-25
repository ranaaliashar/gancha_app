import 'package:flutter/material.dart';


class OnlineDealsScreen extends StatefulWidget {
  const OnlineDealsScreen({super.key});

  @override
  State<OnlineDealsScreen> createState() => _OnlineDealsScreenState();
}

class _OnlineDealsScreenState extends State<OnlineDealsScreen> {
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
            const Icon(Icons.location_on, color: Colors.black, size: 120,),
            const  SizedBox(height: 30,),
        const    Padding(
              padding:  EdgeInsets.symmetric(horizontal: 14, ),
              child:  Text('Your location doesn’t have any nearby deals. But there are still plenty of products to browse!',textAlign: TextAlign.center, style: TextStyle( fontSize: 16),),
            ),
            const  SizedBox(height: 30,),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 170,
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
            child:const Text('Explore nearby menus'),
            ),


          ],
        ),
      ),
    );
  }
}