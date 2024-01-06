import 'package:exotic_fruits/views/home_page.dart';
import 'package:exotic_fruits/views/products_page.dart';
import 'package:flutter/material.dart';

import '../views/search_page.dart';

class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});

  @override
  State<NavigationBarWidget> createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget>
    with SingleTickerProviderStateMixin {
   late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2D2D2D),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 30,right: 30,bottom: 30),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          child: Container(
            height: 70,
            color: Colors.black54,
            child: TabBar(
                unselectedLabelColor: Color(0xff636566),
                labelColor: Color(0xffA08117),
                labelStyle: TextStyle(fontSize:9,),
                // indicator: UnderlineTabIndicator(
                //   borderSide: BorderSide(
                //     color: Colors.black54,
                //   ),
                //   insets: EdgeInsets.fromLTRB(50, 0, 50, 40),
                // ),
                indicatorColor: Colors.black54,
                controller: _tabController,
                tabs: [
                  Tab(
                    icon: CircleAvatar(
                      backgroundColor: Color(0xff636566),
                      child: Icon(Icons.home_outlined,color: Colors.white,),
                    ),
                    text: 'Home',
                  ),
                  Tab(
                    icon: CircleAvatar(
                      backgroundColor: Color(0xff636566),
                      child: Icon(Icons.search,color: Colors.white,),
                    ),
                    text: 'Search',
                  ),
                  Tab(
                    icon: CircleAvatar(
                      backgroundColor: Color(0xff636566),
                      child: Icon(Icons.ac_unit_outlined,color: Colors.white,),
                    ),
                    text: 'Premium',
                  ),

                ]
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          HomePage(),
          SearchPage(),
          ProductsPage(),
        ],
      ),
    );
  }
}


