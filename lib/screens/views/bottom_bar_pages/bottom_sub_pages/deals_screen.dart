import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gancha_app/screens/views/deals_screens/instore_deals.dart';
import 'package:gancha_app/screens/views/deals_screens/my_deals.dart';
import 'package:gancha_app/screens/views/deals_screens/online_deals.dart';

class DealsScreen extends StatefulWidget {
  const DealsScreen({super.key});

  @override
  State<DealsScreen> createState() => _DealsScreenState();
}

class _DealsScreenState extends State<DealsScreen> {
  List dealPages = [
    const MyDealsScreen(),
    const OnlineDealsScreen(),
    const InStoresScreen(),
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: dealPages[_selectedIndex],
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    alignment: Alignment.topCenter,
                    color: Colors.white,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customTabBarWidget(
                                 color:  _selectedIndex==0?  Colors.blue : Colors.white,

                            onTap: () {
                              setState(() {
                                _selectedIndex = 0;
                              });
                            },
                            icon: Icons.favorite_border_sharp,
                            text: 'My Deals'),
                        const SizedBox(
                          width: 10,
                        ),
                        customTabBarWidget(
                        color:  _selectedIndex==1?  Colors.blue : Colors.white,
                          onTap: () {
                            setState(() {
                              _selectedIndex = 1;
                            });
                          },
                          icon: Icons.discount_outlined,
                          text: 'Online Deals',
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        customTabBarWidget(
                           color:  _selectedIndex==2?  Colors.blue : Colors.white,
                          onTap: () {
                            setState(() {
                              _selectedIndex = 2;
                            });
                          },
                          icon: Icons.storefront_sharp,
                          text: 'In-store Specials',
                        ),
                      ],
                    ),
                  ),
               const   Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10,),
                    child: Card(child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Voluptas et quibusdam delectus deleniti autem laboriosam. Accusamus non occaecati labore quam facilis est similique provident ut. Sapiente ut occaecati similique dolo.',textAlign: TextAlign.center, style: TextStyle( fontSize: 14, color: Colors.grey),),
                    ),),
                  ),
                ],
              ),
              // Image.asset("assets/map.png"),
              ),
        ],
      ),
    );
  }

  InkWell customTabBarWidget(
      {required VoidCallback onTap,
      required IconData icon,
      required String text,
      required Color color,
      }) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color:color),
              boxShadow:const [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.5, 1),
                  spreadRadius: .15,
                  blurRadius: .10,
                ),
              ]
            ),
            child: Icon(
              icon,
              color: Colors.blue,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(text),
        ],
      ),
    );
  }
}
