
import 'package:flutter/material.dart';
import 'package:gancha_app/screens/auth/auth/signup_screen.dart';
import 'package:gancha_app/utils/colors.dart';
import 'package:gancha_app/widgets/custom_button.dart';
import 'package:gancha_app/widgets/text_input_filed.dart';

import '../../../widgets/navigation_function.dart';
import '../../../widgets/sign_in_bottom_widget.dart';
import '../../views/bottom_bar_pages/home_screen.dart';


class SignUpScreen extends StatefulWidget {
  static String routeName = "";
  SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool  _isloading = false;

  // final TextEditingController _usernameController = TextEditingController();


  // void loginUser() async {
  //     setState(() {
  //       _isloading = true;
  //     });
  //     String res = await FirebaseAuthMethods(auth: FirebaseAuth.instance).signInUser(
  //         email: _emailController.text, password: _passwordController.text);
  //     if (res == 'successfully logedIn') {
  //       Navigator.of(context)
  //         .push(MaterialPageRoute(builder: (contxt) =>
  //     const MyBottomNavigationBar())
  //       );
  //     } else {
  //       // setState(() {
  //       //   _isloading = false;
  //       // });
  //       showSnackBar(content:res,context: context);
  //     }
  //     setState(() {
  //       _isloading = false;
  //     });
  //   }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 170,
                    width: 170,
                    child: Image.asset("assets/logo.png",fit: BoxFit.contain,),
                    // SvgPicture.asset(
                    //   "assets/logo.svg",
                    //   color: appThemeColor,
                    // ),
                  ),
                ],
              ),
              // const SizedBox(
              //   height: 10,
              // ),
      
              // const SizedBox(
              //   height: 5,
              // ),
             const Text('Create an account', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
               const SizedBox(
                height: 25,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _emailController,
                  
                  // icon: Icons.email,
                  labelText: "E-mail or Username",
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: TextInputField(
                  controller: _passwordController,
                  // icon: Icons.remove_red_eye,
                  labelText: "Password",
                  isObsecure: true,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left:18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     GestureDetector(
                      onTap: () {
                        // userProvider.forgotPassword(_emailController.text.trim(), context);
      // Navigator.push(context, MaterialPageRoute(builder: (_)=> ResetPasswordScreen()));                
                      },
                      child:const Text(
                        "8 chracters or more",
                        style: TextStyle(
                          color: Colors.grey,
                        
                        ),
                      ),
                    ),
            
                  
            
                  ],
                ),
              ),
               const SizedBox(
                height: 5,
              ),
              ListTile(
                leading: Checkbox(value: true, onChanged: (e){
                  
                }),
                title:const Text(
                      "I affirm that I am 21 years of age or older.",
                      style: TextStyle(
                        color: Colors.grey,
                      
                      ),
                    ), 
              ),
               const SizedBox(
                height: 5,
              ),
              ListTile(
                leading: Checkbox(value: true, onChanged: (e){
                  
                }),
                title:const Text(
                      "I’d like to recieve exclusive details, promotions, personalized recommendations and news.",
                      style: TextStyle(
                        color: Colors.grey,
                      
                      ),
                    ), 
              ),

              const SizedBox(
                height: 25,
              ),
      
             _isloading == false? CustomButton(
                color: appThemeColor,
                  onTap:()=> navigationPushFunction(screen:const HomeScreen(), context: context),
                // onTap: () {},
                // loginUser(),
                text: 'Create account',
              ) :const CircularProgressIndicator.adaptive(),

 const SizedBox(
                height: 20,
              ),
                GestureDetector(
                    onTap: () {
                      // userProvider.forgotPassword(_emailController.text.trim(), context);
      // Navigator.push(context, MaterialPageRoute(builder: (_)=> ResetPasswordScreen()));                
                    },
                    child: const Text(
                      "I agree to Terms of Use and Privacy Policy",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        // fontWeight: FontWeight.bold,
                      
                      ),
                    ),
                  ),
      
              const SizedBox(
                height: 25,
              ),
             
           
             SignInBottomWidget(text: 'SignUpWith',),
              const SizedBox(
                height: 10,
              ),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account? ",
                    style: TextStyle(
                      // color: buttonColor,
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // print('Navigator user');
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) => SignUpScreen()));
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: appThemeColor,
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
        
            const  SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
