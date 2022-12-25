import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gancha_app/utils/colors.dart';
import 'package:gancha_app/widgets/custom_button.dart';
import 'package:gancha_app/widgets/home_card.dart';
import 'package:gancha_app/screens/views/item_detail_screen.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/category_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Trending strains in Punjab',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Discover the most popular strains, based on customer reviews.',
                  style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      // fontSize: 20,
                      ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 47.h,
                  width: double.infinity,
                  child: HomeCard(),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 30),
                  height: 50,
                  child: CustomButton(
                    color: const Color(0xffFF6B1E),
                    onTap: () {},
                    text: 'Explore Strains',
                  ),
                ),
                const Text(
                  'Cannabis 101 Videos',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                        categories.length,
                        ((index) => Container(
                          height: 240,
                          width: 200,
                          margin: const EdgeInsets.only(left: 20, right:10),
                           decoration:const BoxDecoration(
                                        color: Colors.white,
                                      ),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (_) => ItemDetailScreen(
                                  //         category:
                                  //             categories[index].title!),
                                  //   ),
                                  // );
                                },
                                child: Container(
                                  height: 150,
                                //    height: 20.h,
                                // width: 45.w,
                                  padding: const EdgeInsets.all(4),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        "${categories[index].assetimage}",
                                        // 'assets/images/logo_dark.png'
                                      ),
                                    ),
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //     blurRadius: 3,
                                    //     color: Colors.red.withOpacity(0.3),
                                    //     spreadRadius: 3,
                                    //   )
                                    // ],
                                    // shape: BoxShape.rectangle,
                                    // border: Border.all(
                                    //   color: Colors.primaries[Random()
                                    //       .nextInt(categories.length)],
                                    // ),
                                    // borderRadius:
                                    //     BorderRadius.circular(10),
                                    // color: Colors
                                    //     .primaries[Random().nextInt(categories.length)],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                           const  Padding(
                               padding:  EdgeInsets.all(8.0),
                               child: Text(
                                  'Praesentium quia vel velit distinctio et libero. Sequi et officiis dolores. ',
                                  // '${categories[index].title}',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    
                                    // fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                             ),
                            ],
                          ),
                        )),
                      ),
                    ],
                  ),
                ),

             const   SizedBox(height: 20,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                 Text(
                  'News and culture',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                 Text(
                  'Show all',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: appThemeColor,
                  ),
                ),
              ],
             ),
             const   SizedBox(height: 20,),
               SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                        categories.length,
                        ((index) => Container(
                          height: 320,
                          width: 200,
                          margin: const EdgeInsets.only(left: 20, right:10),
                           decoration:const BoxDecoration(
                                        color: Colors.white,
                                      ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (_) => ItemDetailScreen(
                                  //         category:
                                  //             categories[index].title!),
                                  //   ),
                                  // );
                                },
                                child: Container(
                                  height: 150,
                                //    height: 20.h,
                                // width: 45.w,
                                  padding: const EdgeInsets.all(4),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        "${categories[index].assetimage}",
                                        // 'assets/images/logo_dark.png'
                                      ),
                                    ),
                                    // boxShadow: [
                                    //   BoxShadow(
                                    //     blurRadius: 3,
                                    //     color: Colors.red.withOpacity(0.3),
                                    //     spreadRadius: 3,
                                    //   )
                                    // ],
                                    // shape: BoxShape.rectangle,
                                    // border: Border.all(
                                    //   color: Colors.primaries[Random()
                                    //       .nextInt(categories.length)],
                                    // ),
                                    // borderRadius:
                                    //     BorderRadius.circular(10),
                                    // color: Colors
                                    //     .primaries[Random().nextInt(categories.length)],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                               const  Card(
                                shape: StadiumBorder(),
                                  elevation: 2,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text(
                                      'Lifestyle',
                                      style:  TextStyle(
                                        // fontWeight: FontWeight.bold,
                                        // fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                           const  Padding(
                               padding:  EdgeInsets.all(8.0),
                               child: Text(
                                  'Praesentium quia vel velit distinctio et',
                                  // '${categories[index].title}',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    
                                    fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                             ),
                               const  Padding(
                               padding:  EdgeInsets.all(8.0),
                               child: Text(
                                  'Rae Lland\nDec 20,2022',
                                  // '${categories[index].title}',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    
                                    // fontWeight: FontWeight.bold,
                                  ),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                             ),
                            ],
                          ),
                        )),
                      ),
                    ],
                  ),
                ),

             const   SizedBox(height: 40,),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
