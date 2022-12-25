// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:gancha_app/constants/category_model.dart';
import 'package:gancha_app/utils/colors.dart';
import 'package:gancha_app/widgets/custom_range_slider.dart';
import 'package:gancha_app/widgets/home_card.dart';
import 'package:sizer/sizer.dart';

class ItemDetailsScreen extends StatefulWidget {
  String name;
  String image;
  ItemDetailsScreen({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  // int _index = 0;
  double start = 0;
  double end = 2500;
  RangeValues val = RangeValues(0, 2500);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.name,
          style: const TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.share,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 10),
                  height: 120,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '(4.5)',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.2),
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
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.2),
                          ),
                          // const Spacer(),
                        ],
                      ),
                 
                   const   SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        const  Card(
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
                          shape:const StadiumBorder(),
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children:const [
                                Icon(Icons.favorite_border, color: Colors.blue, size: 16,),
                                Text(
                                  '2,342',
                                  style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        ],
                      )
                   
                   
                    ],
                  )),
              Container(
                height: 200,
                width: double.infinity,
                child: Image.asset(
                  widget.image,
                ),
              ),
              Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      children: [
                        Container(
                          height: 15,
                          width: 5,
                          decoration: BoxDecoration(
                              color: const Color(0xffAA0061),
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
                margin: const EdgeInsets.only(left: 20, right: 20),
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Calming',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //  const   SizedBox(width: 10,),

                    Text(
                      'Energizing',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  // width: 262.5,
                  height: 20,
                  child: SliderTheme(
                      data: const SliderThemeData(
                          trackHeight: 10,
                          thumbColor: appThemeColor,
                          // inactiveTickMarkColor: Color(0xFFE6E6E6),
                          rangeTrackShape: Gradient_Slider()),
                      child: RangeSlider(
                        inactiveColor: Colors.grey.withOpacity(0.5),
                        onChanged: (value) {
                          setState(() {
                            val = value;
                          });
                        },
                        min: start,
                        max: end,
                        values: val,
                      )),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Low THC',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //  const   SizedBox(width: 10,),

                    Text(
                      'High THC',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  // width: 262.5,
                  height: 20,
                  child: SliderTheme(
                      data: const SliderThemeData(
                          trackHeight: 10,
                          thumbColor: appThemeColor,
                          // inactiveTickMarkColor: Color(0xFFE6E6E6),
                          rangeTrackShape: Gradient_Slider()),
                      child: RangeSlider(
                        inactiveColor: Colors.grey.withOpacity(0.5),
                        onChanged: (value) {
                          setState(() {
                            val = value;
                          });
                        },
                        min: start,
                        max: end,
                        values: val,
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 3),
                height: 80,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 160,
                      child: Card(
                        elevation: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.icecream_outlined,
                                  ),
                                ),
                                Column(
                                  children: const [
                                    Text(
                                      'Flavor & Aroma',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Vanilla',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 160,
                      child: Card(
                        elevation: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.diamond_rounded,
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      Text(
                                        'Top effect',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Relaxed',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // const  SizedBox(height: 20,),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Cereal Milk ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text:
                            'Et voluptatem cum et sit voluptatem qui neque. Nemo esse nostrum dolor consequatur incidunt aliquid harum veritatis cum. Voluptas qui facere.',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              const Text(
                'Strain sensations',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              Container(
                alignment: Alignment.center,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding:
                    const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                height: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 236, 236, 236),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.chat_outlined,
                          size: 14,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Reported by 324 real people like you',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.info_outline,
                      size: 14,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),

              const Text(
                'Effects',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        // Icon(
                        //   Icons.chat_outlined,
                        //   size: 14,
                        // ),
                        // SizedBox(
                        //   width: 5,
                        // ),
                        Text(
                          'Feelings',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                
                
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                    height: 30,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        // Icon(
                        //   Icons.chat_outlined,
                        //   size: 14,
                        // ),
                        // SizedBox(
                        //   width: 5,
                        // ),
                        Text(
                          'Negatives',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffFF6B1E),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  itemScreenCard(icon: Icons.diamond_rounded, text: 'Relaxed'),
                  itemScreenCard(
                      icon: Icons.emoji_emotions_outlined, text: 'Giggly'),
                  itemScreenCard(icon: Icons.favorite, text: 'Aroused'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              const Text(
                'Flavors',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  itemScreenCard(icon: Icons.icecream_sharp, text: 'Vanilla'),
                  itemScreenCard(
                      icon: Icons.food_bank_outlined, text: 'Butter'),
                  itemScreenCard(icon: Icons.cake, text: 'Sweet'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Helps with',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Epilepsy',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '0% of people reported helping with epilepsy',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Anorexia',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '1% of people reported helping with epilepsy',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Muscular dystrophy',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                '0% of people reported helping with epilepsy',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(
                height: 30,
              ),

              Center(
                child: Card(
                  color: Colors.grey[100],
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Voluptas et quibusdam delectus deleniti autem laboriosam. Accusamus non occaecati labore quam facilis est similique provident ut. Sapiente ut occaecati similique dolor sequi itaque odit. Id sunt molestiae quam doloribus dolores',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Strain spotlight',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: 170,
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Image.asset('assets/video.png'),
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Reviews (324)',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width - 50,
                    // margin: const EdgeInsets.symmetric(vertical: 10,),
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1.5),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      'Write a review',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              Center(
                child: Card(
                  elevation: 5,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                            const Text(
                              'Jan 5, 2020',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'C......1',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: const [
                            Icon(Icons.diamond_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Relaxed',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Voluptas et quibusdam delectus deleniti autem laboriosam. Accusamus non occaecati labore quam facilis est similique provident ut. Sapiente ut occaecati similique dolor sequi itaque odit. Id sunt molestiae quam doloribus dolores',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            // Icon(Icons.diamond_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Read full review',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          '231 people found this helpful',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.thumb_up_alt_outlined),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Helpful',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Report',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Read All Reviews',
                style: TextStyle(
                  color: Color(0xffFF6B1E),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Terpenes',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              Container(
                alignment: Alignment.center,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding:
                    const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                height: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 236, 236, 236),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.science_outlined,
                          size: 14,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Certified strain science',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.info_outline,
                      size: 14,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'The most abundant terpene in Cereal Milk is caryophyllene, followed by myrcene and linonene.',
                style: TextStyle(
                  color: Colors.black,
                  // fontSize: 24,
                  // fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'DOMINANT TERPENE',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 35,
                        width: 10,
                        decoration: BoxDecoration(
                            color: const Color(0xffAA0061),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      // const Icon(
                      //   Icons.star,
                      //   color: Colors.amber,
                      //   size: 18,
                      // ),
                      const SizedBox(
                        width: 5,
                      ),

                      const Text(
                        'Caryophyllene ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        '(peppery)',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 10,
                        decoration: BoxDecoration(
                            color: const Color(0xff06048C),
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      // const Icon(
                      //   Icons.star,
                      //   color: Colors.amber,
                      //   size: 18,
                      // ),
                      const SizedBox(
                        width: 5,
                      ),

                      const Text(
                        'Myrcene  ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        '(herbal)',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 25,
                        width: 10,
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
                        width: 5,
                      ),

                      const Text(
                        'Linonene ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        '(citrus)',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Genetics',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: Image.asset('assets/8.png'),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                ],
              ),
                const SizedBox(
                height: 20,
              ),
              const Text(
                'Explore more similar strains',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              Container(
                alignment: Alignment.center,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding:
                    const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                height: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 236, 236, 236),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(
                          Icons.sentiment_satisfied_alt_rounded,
                          size: 14,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Similar strain science',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.info_outline,
                      size: 14,
                      color: Colors.black,
                    ),
                  ],
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
                 const SizedBox(
                  height: 20,
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget itemScreenCard({required IconData icon, required String text}) {
    return SizedBox(
      width: 100,
      child: Card(
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  // Text(
                  //   'Top effect',
                  //   style: TextStyle(color: Colors.grey),
                  // ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      icon,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    text,
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
