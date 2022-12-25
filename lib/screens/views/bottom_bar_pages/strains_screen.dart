import 'package:flutter/material.dart';
import 'package:gancha_app/screens/views/all_strains.dart';
import 'package:gancha_app/widgets/navigation_function.dart';

class StrainsScreen extends StatefulWidget {
  const StrainsScreen({super.key});

  @override
  State<StrainsScreen> createState() => _StrainsScreenState();
}

class _StrainsScreenState extends State<StrainsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: 
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
      
            children: [
             const SizedBox(height: 30,),
            const  Text('Gan Chaa Classics', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
          const    SizedBox(height: 20,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      itemScreenCard(image: 'assets/twitter.png', text: 'All strains'),
                      itemScreenCard(image: 'assets/twitter.png', text: 'Indica'),
      
                    ],
                  ),
            const  SizedBox(height: 20,),
      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
      
                    children: [
                      itemScreenCard(image: 'assets/twitter.png', text: 'Hybrid'),
                      itemScreenCard(image: 'assets/twitter.png', text: 'Sativa'),
      
                    ],
                  ),
                ],
              ),
            const  SizedBox(height: 20,),
              const  Text('Flavors of the month', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
          const    SizedBox(height: 10,),
              const  Text('Looking for best tasting cannabis strains?Try these strains for a flavor-packed experience.',textAlign: TextAlign.center, style: TextStyle( fontSize: 14),),
          const    SizedBox(height: 10,),
      
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                flavours_widget(),
                flavours_widget(),
                flavours_widget(),
      
      
              ],
            ),
          ),
            const  SizedBox(height: 20,),
              const  Text('Hot right now', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
          const    SizedBox(height: 10,),
              const  Text('Explore today’s hottest cannabis strains.',textAlign: TextAlign.center, style: TextStyle( fontSize: 14),),
          const    SizedBox(height: 10,),
      
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                flavours_widget(),
                flavours_widget(),
                flavours_widget(),
      
      
              ],
            ),
          )
      
      
      
            ],
          ),
        ),
      )),
    );
  }

 flavours_widget() {
    return Container(
              // margin: EdgeInsets.only(right:2),
              height: 190,
              width: 205,
           child: Stack(
             children: [
               Image.asset('assets/choco.png', fit: BoxFit.cover),
        const    Positioned(
          bottom: 4,
          left: 4,
          child: Text('Chocolate cannabis Strains ',overflow: TextOverflow.clip, style: TextStyle(color: Colors.white),),),
             ],
           )
            );
  }
  Widget itemScreenCard({required String image, required String text}) {
    return InkWell(
      onTap: ()=> navigationPushFunction(screen:const  AllStrainsScreen(), context: context),
      child: SizedBox(
        width: 140,
        height: 60,
        child: Container(
          // elevation: 8,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text(
                    //   'Top effect',
                    //   style: TextStyle(color: Colors.grey),
                    // ),
                 
                      Container(
                        child: Image.asset(image)),
                
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      text,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}