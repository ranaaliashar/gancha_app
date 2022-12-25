import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gancha_app/constants/category_model.dart';
import 'package:gancha_app/widgets/empty_screen.dart';
import 'package:gancha_app/screens/views/item_detail_screen.dart';

import 'package:sizer/sizer.dart';

class HomeCard extends StatefulWidget {
  // Restaurant res;
  HomeCard({
    Key? key,
    // required this.res
  }) : super(key: key);

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => ItemDetailsScreen(
                          name: categories[index].title!,
                          image: categories[index].assetimage!,
                        )),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(
                top: 10,
                // bottom: 10,
                left: 5,
                right: 5,
              ),
              height: 240,
              width: 70.w,
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                  blurRadius: 0.4,
                  color: Colors.grey,
                  spreadRadius: 0.2,
                  offset: Offset(.4, .1),
                ),
              ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          bottom: 5,

                          // horizontal: 5,
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 24.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // boxShadow: const [
                          //   BoxShadow(
                          //     blurRadius: 0.4,
                          //     color: Colors.grey,
                          //     spreadRadius: 0.2,
                          //     offset: Offset(0.9, .9),
                          //   ),
                          // ],
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            categories[index].assetimage!,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 0.4,
                                  color: Colors.grey,
                                  spreadRadius: 0.2,
                                  offset: Offset(.4, .1),
                                ),
                              ]),
                          child: const Icon(Icons.favorite_border),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 3,
                      left: 10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Card(
                          elevation: 5,
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              'Hybrid',
                              style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                  // fontSize: 16,
                                  ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          categories[index].title!,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: const [
                            Text(
                              '4.8 ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 18,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 18,
                            ),
                            Text(
                              '(324)',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              'THC 22%',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            // const Icon(
                            //   Icons.star,
                            //   color: Colors.amber,
                            //   size: 18,
                            // ),
                            SizedBox(
                              width: 10,
                            ),

                            Text(
                              'CBG 1%',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.wallet_giftcard_outlined,
                              // color: Colors.amber,
                              size: 18,
                            ),
                            const SizedBox(
                              width: 3,
                            ),

                            const Text(
                              'Relaxed',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),

                            Container(
                              height: 15,
                              width: 5,
                              decoration: BoxDecoration(
                                  color: Color(0xffAA0061),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                            // const Icon(
                            //   Icons.star,
                            //   color: Colors.amber,
                            //   size: 18,
                            // ),
                            const SizedBox(
                              width: 3,
                            ),

                            const Text(
                              'CBG 1%',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
