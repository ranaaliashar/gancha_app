// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:provider/provider.dart';
// import 'package:rem_app/database_files/providers/user_provider.dart';
// import 'package:rem_app/database_files/services/auth_methods/firebase_auth_methods.dart';
// import 'package:rem_app/screens/bottom_bar_screens/bottom_screen.dart';
// import 'package:rem_app/screens/bottom_bar_screens/make_choice/make_choice_screen.dart';
// import 'package:rem_app/screens/views/auth/sign_in.dart';
// import 'package:rem_app/screens/views/auth/signup_screen.dart';
// import 'package:rem_app/styles/colors.dart';
// import 'package:rem_app/widgets/custom_button.dart';
// import 'package:rem_app/widgets/custom_snackbar.dart';
// import 'package:rem_app/widgets/text_input_field.dart';

// class ResetPasswordScreen extends StatefulWidget {
//   static String routeName = "";
//   ResetPasswordScreen({Key? key}) : super(key: key);

//   @override
//   State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
// }

// class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
//   final TextEditingController _emailController = TextEditingController();


//   bool  _isloading = false;

//   // final TextEditingController _usernameController = TextEditingController();



//   @override
//   void dispose() {
//     super.dispose();
//     _emailController.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     final userProvider = Provider.of<UserProvider>(context);
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Container(
//         alignment: Alignment.center,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   height: 150,
//                   width: 150,
//                   child: SvgPicture.asset(
//                     "assets/logo.svg",
//                     color: appThemeColor,
//                   ),
//                 ),
//               ],
//             ),
//             // const SizedBox(
//             //   height: 10,
//             // ),

//             const SizedBox(
//               height: 55,
//             ),

//             Container(
//               width: double.infinity,
//               margin: const EdgeInsets.symmetric(horizontal: 20),
//               child: TextInputField(
//                 controller: _emailController,
//                 // icon: Icons.email,
//                 labelText: "E-mail Adress",
//               ),
//             ),
          
//             const SizedBox(
//               height: 35,
//             ),

//            _isloading == false? CustomButton(
//               color: appThemeColor,
//               onTap: ()async {
//                await FirebaseAuthMethods(auth: FirebaseAuth.instance).resetPassword(_emailController.text).then((value) => _showAndPop);
//               },
//               text: 'Reset Password',
//             ) :const CircularProgressIndicator.adaptive(),

           
//           ],
//         ),
//       ),
//     );
//   }

//   _showAndPop() {
//     return showDialog(
//         context: context,
//         builder: (context) {
//           return SimpleDialog(
//             title: const Text(
//               'Verificaton mail has sent to email\n please check spam',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: appThemeColor,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             children: [
//               const Divider(
//                 thickness: 3,
//                 color: appThemeColor,
//               ),
//               SimpleDialogOption(
//                 padding: const EdgeInsets.all(20),
//                 child: const Text(
//                   'Close',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: appThemeColor,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 onPressed: () async {
//                   Navigator.of(context).pop();
                
//                 },
//               ),
//               // Divider(
//               //   thickness: 0.5,
//               //   color: appThemeColor,
//               // ),
//               SimpleDialogOption(
//                 padding: const EdgeInsets.all(20),
//                 child: const Text(
//                   'Choose from gallery',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: appThemeColor,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 onPressed: () async {
//                   Navigator.of(context).push(MaterialPageRoute(builder: (_)=> SignInScreen()));
                  
//                 },
//               ),
//               //  Divider(
//               //   thickness: 0.5,
//               //   color: appThemeColor,
//               // ),
//               SimpleDialogOption(
//                 padding: const EdgeInsets.all(20),
//                 child: const Text(
//                   'Close',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: appThemeColor,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 onPressed: () async {
//                   Navigator.of(context).pop();
//                 },
//               )
//             ],
//           );
//         });
//   }
// }
