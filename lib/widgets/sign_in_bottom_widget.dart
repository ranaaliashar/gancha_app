// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gancha_app/widgets/custom_button.dart';

class SignInBottomWidget extends StatelessWidget {
  String text;
 SignInBottomWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
             SizedBox(width: MediaQuery.of(context).size.width*0.4,
                      child:const Divider(
                        color: Colors.black,
                      ),),
                      const Text(
                        "OR",
                        style: TextStyle(
                          // color: buttonColor,
                          fontSize: 16,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                        SizedBox(width: MediaQuery.of(context).size.width*0.4,
                      child:const Divider(
                        color: Colors.black,
                      ),),

          ],
        ),
    const    SizedBox(height: 20,),
    Text(text),
    const    SizedBox(height: 20,),

       Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
       onTap: (){},
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width - 50,
        // margin: const EdgeInsets.symmetric(vertical: 10,),
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                  IconButton(onPressed: (){}, icon: Image.asset('assets/google_logo.png', fit: BoxFit.cover,height: 40, width: 40,)),

         const    Text(
              'Sign in with Google',
              style:TextStyle(
                color: Colors.black,
                fontSize: 16,
                // fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ),
    const SizedBox(height: 15,),

    InkWell(
       onTap: (){},
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width - 50,
        // margin: const EdgeInsets.symmetric(vertical: 10,),
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                  IconButton(onPressed: (){}, icon: Image.asset('assets/apple_logo.png', fit: BoxFit.cover,height: 40, width: 40,)),

         const    Text(
              'Sign in with Apple',
              style:TextStyle(
                color: Colors.black,
                fontSize: 16,
                // fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ),
    const SizedBox(height: 15,),
    InkWell(
       onTap: (){},
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width - 50,
        // margin: const EdgeInsets.symmetric(vertical: 10,),
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                  IconButton(onPressed: (){}, icon: Image.asset('assets/twitter.png', fit: BoxFit.cover,height: 40, width: 40,)),

         const    Text(
              'Sign in with Twitter',
              style:TextStyle(
                color: Colors.black,
                fontSize: 16,
                // fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    ),
            // Container(
            //   child: Row(
            //     children: [
            //     ],
            //   ),
            // ),
            // IconButton(onPressed: (){}, icon: Image.asset('assets/apple_logo.png', fit: BoxFit.cover,height: 60, width: 60,)),
            // IconButton(onPressed: (){}, icon: Image.asset('assets/fb_logo.png', fit: BoxFit.cover,height: 60, width: 60,)),

          ],
        ),
      ],
    );
  }
}
