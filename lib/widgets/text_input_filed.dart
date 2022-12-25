import 'package:flutter/material.dart';


class TextInputField extends StatelessWidget {
  TextEditingController controller;
  IconData? icon;
  String labelText;
  bool isObsecure;
  
  String? Function(String?)? validate;
   TextInputField({
    Key? key,
    required this.controller,
     this.icon,
    required this.labelText,
    this.isObsecure =false,
    this.validate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator : validate,
      decoration: InputDecoration(
        border: InputBorder.none,
        
        // labelStyle: const TextStyle(fontSize: 12, ),
       labelStyle:const TextStyle(color: Colors.grey, fontSize: 14,),
        
        suffixIcon: Icon(icon),
        labelText: labelText,
        // enabledBorder: Border.
        // OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(5),
        //   // borderSide: const BorderSide(color: borderColor),
        // ),
        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(5),
          
          // borderSide: const BorderSide(color: borderColor),
        // ),
        fillColor: Color(0xffD9D9D9
),
filled: true,
      ),
      obscureText: isObsecure,
      
    );
  }
}
