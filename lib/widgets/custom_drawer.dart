
import 'package:flutter/material.dart';
import 'package:gancha_app/screens/auth/auth/sign_in.dart';
import 'package:gancha_app/screens/views/bottom_bar_pages/home_screen.dart';
import 'package:gancha_app/utils/colors.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final userProvider = Provider.of<UserProvider>(context);
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 48.0, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:const [
                  Icon(Icons.location_on),
                  SizedBox(width: 5,),
                  Text('Lahore, Punjab'),
                ],
              ),
            ),
           const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Container(
                alignment: Alignment.center,
                height: 40,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black),
                ),
                child: Text('SignUp'),
              ),
         Container(
                alignment: Alignment.center,
                height: 40,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black),
                ),
                child: Text('SignIn'),
              )
        
            ],),
            const SizedBox(
              height: 40,
            ),
          
            drawerCard(
              leadingIcon: Icons.notifications,
              title: "Notifications",
              screen: const HomeScreen(),
              context: context,
            ),
            drawerCard(
              leadingIcon: Icons.map,
              title: "Map",
              screen: const HomeScreen(),
              context: context,
            ),
            drawerCard(
              leadingIcon: Icons.newspaper,
              title: "News",
              screen:const  HomeScreen(),
              context: context,
            ),
            Column(
      children: [
        Container(
          width: double.infinity,
          alignment: Alignment.center,
         
          child: ListTile(
            onTap: () async{ 
            Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (_) => SignInScreen(),
                                                  ));
            },
            leading:const Icon(
              
             
                Icons.offline_bolt,
                color: Colors.black,
           
            ),
            title:const Text(
              "LogOut",
              style:  TextStyle(
                color: Colors.black,
              ),
            ),
            // trailing: Icon(tralingIcon),
          ),
        ),
      const  Divider(
          thickness: 1,
        ),
      ],
    )
            
          ],
        ),
      ),
    );
  }

  Widget drawerCard(
      {IconData? leadingIcon,
      String? title,
      required BuildContext context,
      // IconData? tralingIcon,
      Widget? screen}) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => screen!));
          },
          child: Container(
            width: double.infinity,
            // height: 50,
            // margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            alignment: Alignment.center,
            // decoration: const BoxDecoration(
            // color: Colors.white,
            // borderRadius: BorderRadius.circular(10),
            // boxShadow: [
            //   BoxShadow(color: Colors.grey, blurRadius: 0.5, spreadRadius: .2)
            // ]),

            // elevation: 0,
            child: ListTile(
              leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  leadingIcon,
                  color: Colors.black,
                ),
              ),
              title: Text(
                title!,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
              // trailing: Icon(tralingIcon),
            ),
          ),
        ),
        Divider(
          thickness: 1,
        ),
      ],
    );
  }
}
