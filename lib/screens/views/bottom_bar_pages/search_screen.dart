import 'package:flutter/material.dart';
import 'package:gancha_app/screens/views/bottom_bar_pages/bottom_sub_pages/map_screen.dart';

import 'package:gancha_app/utils/colors.dart';
import 'package:gancha_app/widgets/navigation_function.dart';

import 'package:sizer/sizer.dart';


class UserSearchScreen extends StatefulWidget {
  const UserSearchScreen({Key? key}) : super(key: key);

  @override
  State<UserSearchScreen> createState() => _UserSearchScreenState();
}

class _UserSearchScreenState extends State<UserSearchScreen> {
  String category = 'All Categories', query = '';
 

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           Container(
            decoration:const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.5, 1),
                  spreadRadius: 5,
                  blurRadius: 10,
                ),
              ]
            ),
            alignment: Alignment.bottomCenter,
            height: 120,
             child: TextField(
              autofocus: true,
              
              onChanged: (value) {
                if (value.isNotEmpty) {
                  // BlocProvider.of<SearchProvider>(context).startSearch(value, category, items);
                }
              },
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Looking For...',
                fillColor: Colors.white,
                filled: true,
                // hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                    splashRadius: 2,
                    onPressed: () {},
                    icon: const Icon(Icons.search, color: Colors.black,),
                  ),
                )
              ),
          ),
           ),

          const SizedBox(height: 20,),

          searchWidget(
            text: 'Dispensaries near you',
            screen:const MapScreen()
          ),
           searchWidget(
            text: 'New cannabis guide',
            screen:const MapScreen()
          ),
           searchWidget(
            text: 'New cannabis guide',
            screen:const MapScreen()
          ),
      
        ],
      ),
    );
    
    }

  Padding searchWidget({required String  text, required Widget screen}) {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  navigationPushFunction(screen: screen, context: context);
                },
                child: Text(text),
                ),
        const SizedBox(height: 10,),

               const Divider(
                color: Colors.black,

               ),
            ],
          ),
        );
  }
    
    
    }