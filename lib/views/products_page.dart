import 'package:flutter/material.dart';

import '../models/fruit_card_model.dart';
import '../widgets/fruit_card.dart';

class ProductsPage extends StatefulWidget {
  ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  List<FruitCardModel> fruits = [
    FruitCardModel(
        image: 'assets/home_fruits/dragon_fruit.png',
        name: 'Dragon Fruit',
        price: 4.95,
        backgroundImage: 'assets/fruit_details/dragon fruit 2.jpg'),
    FruitCardModel(
        image: 'assets/home_fruits/papaya.png',
        name: 'Papaya',
        price: 3.90,
        backgroundImage: 'assets/fruit_details/papaya 1.jpg'),
    FruitCardModel(
        image: 'assets/home_fruits/mangosteen.png',
        name: 'Mangosteen',
        price: 5.75,
        backgroundImage: 'assets/fruit_details/mangosteen2.jpg'),
    FruitCardModel(
        image: 'assets/home_fruits/avocado.png',
        name: 'Avocado',
        price: 5.75,
        backgroundImage: 'assets/fruit_details/avocado2.jpg'),
    FruitCardModel(
        image: 'assets/home_fruits/gooseberry.png',
        name: 'Gooseberry',
        price: 5.75,
        backgroundImage: 'assets/fruit_details/gooseberry 2.jpg'),
    FruitCardModel(
        image: 'assets/home_fruits/guava.png',
        name: 'Guava',
        price: 5.75,
        backgroundImage: 'assets/fruit_details/guava 1.jpg'),
    FruitCardModel(
        image: 'assets/home_fruits/kiwie.png',
        name: 'Kewie',
        price: 5.75,
        backgroundImage: 'assets/fruit_details/kiwie 1.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2D2D2D),
      body: SafeArea(
        child: LayoutBuilder(builder: (context , constraints ) {
          if(constraints.maxWidth <500){
            return CustomScrollView(slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 15,
                              child: Icon(Icons.arrow_back_outlined,color: Colors.black,),
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height /44,),
                          Row(
                            children: [
                              Text('PREMIUM ',
                                style: TextStyle(
                                    color: Color(0xffA2B859)
                                ),
                              ),
                              Icon(Icons.ac_unit_outlined,color: Color(0xffA2B859),size: 17,)
                            ],
                          ),
                        ],
                      ),
                      Stack(
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
                    ],
                  ),
                ),
              ),
              SliverGrid.builder(
                  itemCount: fruits.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.1 / 1.3,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  ),
                  itemBuilder: (context, index) {
                    return FruitCard(
                      name: fruits[index].name,
                      image: fruits[index].image,
                      price: fruits[index].price,
                      backgroundImage: fruits[index].backgroundImage,
                      imageHeight: MediaQuery.of(context).size.height /7,
                      imageWidth: MediaQuery.of(context).size.height /8,
                    );
                  })
            ]);
          }else{
            return CustomScrollView(slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30 ,vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 15,
                              child: Icon(Icons.arrow_back_outlined,color: Colors.black,),
                            ),
                          ),
                          SizedBox(height: MediaQuery.of(context).size.height /44,),
                          Row(
                            children: [
                              Text('PREMIUM ',
                                style: TextStyle(
                                    color: Color(0xffA2B859)
                                ),
                              ),
                              Icon(Icons.ac_unit_outlined,color: Color(0xffA2B859),size: 17,)
                            ],
                          ),
                        ],
                      ),
                      Stack(
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
                    ],
                  ),
                ),
              ),
              SliverGrid.builder(
                  itemCount: fruits.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 1 / 1.1,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  ),
                  itemBuilder: (context, index) {
                    return FruitCard(
                      name: fruits[index].name,
                      image: fruits[index].image,
                      price: fruits[index].price,
                      backgroundImage: fruits[index].backgroundImage,
                      imageHeight: MediaQuery.of(context).size.width /7,
                      imageWidth: MediaQuery.of(context).size.width /8,
                    );
                  })
            ]);
          }
        },

        ),
      ),
    );
  }
}
