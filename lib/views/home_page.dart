import 'package:exotic_fruits/views/product_details_page.dart';
import 'package:exotic_fruits/views/products_page.dart';
import 'package:flutter/material.dart';

import '../models/fruit_card_model.dart';
import '../widgets/fruit_card.dart';
import '../widgets/navigation_bar.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   List<FruitCardModel> fruits=[
     FruitCardModel(image: 'assets/home_fruits/dragon_fruit.png', name: 'Dragon Fruit', price: 4.95, backgroundImage: 'assets/fruit_details/dragon fruit 2.jpg'),
     FruitCardModel(image: 'assets/home_fruits/papaya.png', name: 'Papaya', price: 3.90, backgroundImage: 'assets/fruit_details/papaya 1.jpg'),
     FruitCardModel(image: 'assets/home_fruits/mangosteen.png', name: 'Mangosteen', price: 5.75, backgroundImage: 'assets/fruit_details/mangosteen2.jpg'),
     FruitCardModel(image: 'assets/home_fruits/avocado.png', name: 'Avocado', price: 5.75, backgroundImage: 'assets/fruit_details/avocado2.jpg'),
     FruitCardModel(image: 'assets/home_fruits/gooseberry.png', name: 'Gooseberry', price: 5.75, backgroundImage: 'assets/fruit_details/gooseberry 2.jpg'),

   ];

  @override
  Widget build(BuildContext context) {
    //TabController _tabController;
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth <500){
        return SafeArea(
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xff636566),
                    radius: 71,
                    child: CircleAvatar(
                      backgroundColor: Color(0xff2D2D2D),
                      radius: 70,
                      child: CircleAvatar(
                        backgroundColor: Color(0xffA08117),
                        radius: 46,
                        child: CircleAvatar(
                          backgroundColor: Color(0xff2D2D2D),
                          radius: 45,
                          child: CircleAvatar(
                            backgroundColor: Color(0xffA08117),
                            radius: 25,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Image.asset(
                                'assets/profile_photo/photo.jpeg',
                                fit: BoxFit.contain,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                          ),
                          height: 65,
                          //MediaQuery.of(context).size.height *0.08
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('10',),
                              Text('Product'),

                            ],
                          ),
                        ),
                        Badge(
                          smallSize: 10,
                          backgroundColor: Color(0xffA2B859),
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 18,
                            child: Icon(Icons.shopify_outlined,color: Colors.white,),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Exotic',style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w400
                  ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('fruits',style: TextStyle(
                          color: Color(0xffA2B859),
                          fontSize: 40,
                          fontWeight: FontWeight.w300
                      ),),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return ProductsPage();
                        }));
                      },
                      child:const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('see more',style: TextStyle(
                          color: Color(0xffA2B859),
                          fontSize: 15,
                          //fontWeight: FontWeight.w300
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: MediaQuery.of(context).size.height / 3.6,
                child: ListView.builder(
                    itemCount: fruits.length,
                    physics:  BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return FruitCard(
                        name: fruits[index].name,
                        image: fruits[index].image,
                        price: fruits[index].price, backgroundImage: fruits[index].backgroundImage,
                        imageHeight: MediaQuery.of(context).size.height /7,
                        imageWidth: MediaQuery.of(context).size.height /7,

                      );
                    }),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height /20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Offers',style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w400
                      ),),
                    ),
                    GestureDetector(
                      onTap: (){

                      },
                      child:const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('see more',style: TextStyle(
                          color: Color(0xffA2B859),
                          fontSize: 15,
                          //fontWeight: FontWeight.w300
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        // padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                            color: Color(0xff626466),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),
                                bottomLeft:  Radius.circular(20),bottomRight:  Radius.circular(70))
                        )
                        ,child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/home_fruits/guava.png',
                            height: MediaQuery.of(context).size.height /9,
                            width: MediaQuery.of(context).size.height /9,
                            // MediaQuery.of(context).size.height /9
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Guava  ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),


                              Row(
                                children: [
                                  Text('PREMIUM ',
                                    style: TextStyle(
                                      color: Color(0xffA2B859),
                                      fontSize: 13,
                                    ),
                                  ),
                                  Icon(Icons.ac_unit_outlined,color: Color(0xffA2B859),size: 15,)
                                ],
                              ),




                            ],
                          ),
                          Column(
                            children: [
                              Text(' €2.75',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17
                                ),
                              ),
                              Text(' €2.00',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 15,
                        child: Icon(Icons.arrow_forward_rounded,color: Colors.black,),
                      )
                    ]
                ),
              ),


            ],
          ),
        );
      }else{
        return SafeArea(
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xff636566),
                    radius: 71,
                    child: CircleAvatar(
                      backgroundColor: Color(0xff2D2D2D),
                      radius: 70,
                      child: CircleAvatar(
                        backgroundColor: Color(0xffA08117),
                        radius: 46,
                        child: CircleAvatar(
                          backgroundColor: Color(0xff2D2D2D),
                          radius: 45,
                          child: CircleAvatar(
                            backgroundColor: Color(0xffA08117),
                            radius: 25,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Image.asset(
                                'assets/profile_photo/photo.jpeg',
                                fit: BoxFit.contain,
                                alignment: Alignment.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                          ),
                          height: 65,
                          //MediaQuery.of(context).size.height *0.08
                          margin: EdgeInsets.only(top: 20),
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('10',),
                              Text('Product'),

                            ],
                          ),
                        ),
                        Badge(
                          smallSize: 10,
                          backgroundColor: Color(0xffA2B859),
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 18,
                            child: Icon(Icons.shopify_outlined,color: Colors.white,),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Exotic',style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w400
                  ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('fruits',style: TextStyle(
                          color: Color(0xffA2B859),
                          fontSize: 40,
                          fontWeight: FontWeight.w300
                      ),),
                    ),
                    GestureDetector(
                      onTap: (){

                      },
                      child:const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('see more',style: TextStyle(
                          color: Color(0xffA2B859),
                          fontSize: 15,
                          //fontWeight: FontWeight.w300
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: MediaQuery.of(context).size.width / 3.6,
                child: ListView.builder(
                    itemCount: fruits.length,
                    physics:  BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Stack(
                              //fit: StackFit.passthrough,
                                alignment: Alignment.bottomRight,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 70),
                                    padding: EdgeInsets.symmetric(horizontal: 25),
                                    decoration: BoxDecoration(
                                        color: Color(0xff626466),
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),
                                            bottomLeft:  Radius.circular(20),bottomRight:  Radius.circular(70)
                                        )
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 25),
                                      child: Container(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          // mainAxisAlignment: MainAxisAlignment.end,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: MediaQuery.of(context).size.height /35,
                                            ),
                                            Text('${fruits[index].name}',
                                              style: TextStyle(
                                                  color: Colors.white
                                              ),
                                            ),
                                            Expanded(
                                              child: Row(
                                                children: [
                                                  Text('PREMIUM ',
                                                    style: TextStyle(
                                                        color: Color(0xffA2B859)
                                                    ),
                                                  ),
                                                  Icon(Icons.ac_unit_outlined,color: Color(0xffA2B859),size: 15,)
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Text('€${fruits[index].price.toString()}',
                                                style: TextStyle(
                                                    color: Colors.white
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context){
                                        return ProductDetailsPage(backgroundImage: fruits[index].backgroundImage,
                                          name: fruits[index].name,);
                                      }));
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 15,
                                      child: Icon(Icons.arrow_forward_rounded,color: Colors.black,),
                                    ),
                                  )
                                ]
                            ),
                          ),
                          Image.asset(
                            fruits[index].image,
                            height: MediaQuery.of(context).size.width /7,
                            width: MediaQuery.of(context).size.width /7,
                            // MediaQuery.of(context).size.height /7
                          )
                        ],
                      );
                    }),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height /20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Offers',style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w400
                      ),),
                    ),
                    GestureDetector(
                      onTap: (){

                      },
                      child:const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('see more',style: TextStyle(
                          color: Color(0xffA2B859),
                          fontSize: 15,
                          //fontWeight: FontWeight.w300
                        ),),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        // padding: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                            color: Color(0xff626466),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20),
                                bottomLeft:  Radius.circular(20),bottomRight:  Radius.circular(70))
                        )
                        ,child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset('assets/home_fruits/guava.png',
                            height: MediaQuery.of(context).size.width /8,
                            width: MediaQuery.of(context).size.width /8,
                            // MediaQuery.of(context).size.height /9
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Guava  ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),


                              Row(
                                children: [
                                  Text('PREMIUM ',
                                    style: TextStyle(
                                      color: Color(0xffA2B859),
                                      fontSize: 13,
                                    ),
                                  ),
                                  Icon(Icons.ac_unit_outlined,color: Color(0xffA2B859),size: 15,)
                                ],
                              ),




                            ],
                          ),
                          Column(
                            children: [
                              Text(' €2.75',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17
                                ),
                              ),
                              Text(' €2.00',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17
                                ),
                              ),

                            ],
                          ),
                        ],
                      ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 15,
                        child: Icon(Icons.arrow_forward_rounded,color: Colors.black,),
                      )
                    ]
                ),
              ),


            ],
          ),
        );
      }
    });
  }
}


