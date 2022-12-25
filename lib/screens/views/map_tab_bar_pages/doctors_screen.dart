import 'package:flutter/material.dart';


class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child:Image.asset("assets/map.png", fit: BoxFit.cover,),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding:const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            alignment: Alignment.topCenter,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const [
                Text('List', style: TextStyle(color: Colors.blue),),
                Text('Filter', style: TextStyle(color: Colors.blue),),

              ],
            ),
          )
          // Image.asset("assets/map.png"),
        ),
      ],
    );
  }
}