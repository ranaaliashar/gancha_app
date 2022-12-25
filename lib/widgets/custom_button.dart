import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  VoidCallback onTap;
  String text;
  Color color;
   CustomButton({
    Key? key,
    required this.color,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
       onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width - 50,
        // margin: const EdgeInsets.symmetric(vertical: 10,),
        height: 60,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          text,
          style:const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}