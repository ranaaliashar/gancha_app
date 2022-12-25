import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gancha_app/constants/category_model.dart';
import 'package:sizer/sizer.dart';

class AllStrainsScreen extends StatefulWidget {
  const AllStrainsScreen({super.key});

  @override
  State<AllStrainsScreen> createState() => _AllStrainsScreenState();
}

class _AllStrainsScreenState extends State<AllStrainsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.share))],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 10, bottom: 15),
              height: 15.h,
              width: double.infinity,
              color: Colors.blue,
              child: const Text(
                'All Strains',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        'Sort by Popular',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                  const Text(
                    'Filter',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                ],
              ),
            ),
           Container(
            height: 85.h,
              child: ListView.builder(
               itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                    height: 200,
                    width: double.infinity,
                    child: SizedBox(
                      height: 190,
                      width: double.infinity,
                      child: Card(
                        elevation: 4,
                        color: Colors.white,
                        child: Padding(
                                       padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
                          
                          child: Row(
                            children: [
                              Container(
                                  width: 110,
                                  child: Image.asset(categories[index].assetimage!)),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        Card(
                                          shape: const StadiumBorder(),
                                          elevation: 5,
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Row(
                                              children: const [
                                                Icon(
                                                  Icons.favorite_border,
                                                  color: Colors.blue,
                                                  size: 20,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      'Wedding Cake',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      'aka Triangle Mints #23, Pink Cookies',
                                      style: TextStyle(
                                        // fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      height: 25,
                                      child: Row(
                                        children: [
                                          Text(
                                            '(4.5)',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.copyWith(
                                                  color: Colors.grey,
                                                  // fontWeight: FontWeight.bold,
                                                  fontSize: 14,
                          
                                                  letterSpacing: 1.2,
                                                ),
                                          ),
                                          RatingBarIndicator(
                                            itemSize: 20,
                                            itemCount: 5,
                                            rating: 4.5,
                                            itemBuilder: (_, n) {
                                              return const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              );
                                            },
                                          ),
                                          const SizedBox(width: 5),
                                          Text(
                                            '(${321})',
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium
                                                ?.copyWith(
                                                    color: Colors.grey,
                                                    fontSize: 14,
                                                    // fontWeight: FontWeight.bold,
                                                    letterSpacing: 1.2),
                                          ),
                                          // const Spacer(),
                                        ],
                                      ),
                                    ),
                                    // const SizedBox(
                                    //   height: 10,
                                    // ),
                                    Container(
                                      height: 20,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.crop_square_outlined,
                                                // color: Colors.amber,
                                                size: 18,
                                              ),
                                              SizedBox(
                                                width: 3,
                                              ),
                                              Text(
                                                'THC 22%',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                          //  const   SizedBox(width: 10,),
                          
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.tornado_outlined,
                                                // color: Colors.amber,
                                                size: 18,
                                              ),
                                              SizedBox(
                                                width: 3,
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
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 20,
                                      child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          
                                        children: [
                                            Row(
                              children:const [
                                // Container(
                                //   height: 15,
                                //   width: 5,
                                //   decoration: BoxDecoration(
                                //       color: const Color(0xffAA0061),
                                //       borderRadius: BorderRadius.circular(15)),
                                // ),
                                // // const Icon(
                                //   Icons.star,
                                //   color: Colors.amber,
                                //   size: 18,
                                // ),
                                Icon(Icons.diamond),
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
                              ],
                            ),
                          
                                            Row(
                              children: [
                                Container(
                                  height: 15,
                                  width: 5,
                                  decoration: BoxDecoration(
                                      color: const Color(0xffEEDC00),
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
                                  'Caryophyllene',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}
