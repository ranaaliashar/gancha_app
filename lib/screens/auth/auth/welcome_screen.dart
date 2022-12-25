
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gancha_app/screens/auth/auth/sign_in.dart';
import 'package:gancha_app/screens/auth/auth/signup_screen.dart';
import 'package:gancha_app/utils/colors.dart';
import 'package:gancha_app/widgets/custom_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome To',
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                height: 150,
                width: 150,
                child: Image.asset(
                  "assets/logo.png",
                  fit: BoxFit.contain,
                ),
                // SvgPicture.asset(
                //   "assets/logo.svg",
                //   color: appThemeColor,
                // ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Join Us Today',
              style: TextStyle(
                fontSize: 24,
                // fontWeight: FontWeight.bold,
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: const [
            //     Text(
            //       'And',
            //       style: TextStyle(
            //         fontSize: 24,
            //         // fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //     Text(
            //       ' Be Fit & Motivated',
            //       style: TextStyle(
            //         fontSize: 24,
            //         color: appThemeColor,
            //         // fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ],
            // ),
            const SizedBox(
              height: 40,
            ),
            Column(
              children: [
                CustomButton(
                  color: appThemeColor,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => SignInScreen()));
                  },
                  text: 'Login',
                ),
               const SizedBox(height: 20,),
                CustomButton(
                  color: appThemeColor,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => SignUpScreen()));
                  },
                  text: 'Register',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
