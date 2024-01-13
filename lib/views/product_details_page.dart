import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key, required this.backgroundImage, required this.name});
  final String backgroundImage;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(backgroundImage),
        fit: BoxFit.fill,
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: LayoutBuilder(builder: (context , constraints ) {

            if(constraints.maxWidth<500){
              return ListView(
                children: [

                  Padding(
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
                              child: const CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 15,
                                child: Icon(Icons.arrow_back_outlined,color: Colors.black,),
                              ),
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height /44,),
                            Row(
                              children: const [
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
                              margin: const EdgeInsets.only(top: 20),
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('10',),
                                  Text('Product'),

                                ],
                              ),
                            ),
                            const Badge(
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
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Exotic fruits',style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w400
                      ),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(name,style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w300
                      ),),
                    ),
                  ),
                  Padding(
                    padding:  const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                    child: Align(
                      //widthFactor: MediaQuery.of(context).size.width/2.5,
                      alignment: Alignment.centerLeft,
                      child: ElevatedButton(
                        onPressed: (){
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent, // Background color of the button
                          primary: const Color(0xffA2B859), // Text color
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0), // Border radius
                            side:  const BorderSide(
                              color: Color(0xffA2B859),
                              width: .5,
                            ), // Border color
                          ),
                        ),
                        child: const Text('Nutrition',style: TextStyle(
                            color: Color(0xffA2B859)
                        ),),

                      ),
                    ),

                  ),
                  SizedBox(height: MediaQuery.of(context).size.height /2.1,),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                      ),
                      height: MediaQuery.of(context).size.height *0.14,
                      //
                      margin: const EdgeInsets.only(right: 30,bottom: 30),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.aspectRatio *50,
                            backgroundColor: Colors.black,
                            child: const Icon(
                              Icons.shopping_cart_outlined,color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5,),
                          const Text('Add to ',),
                          const Text('Order'),

                        ],
                      ),
                    ),
                  )

                ],
              );
            }else{
              return ListView(
                children: [

                  Padding(
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
                                radius: MediaQuery.of(context).size.aspectRatio *10,
                                child: const Icon(Icons.arrow_back_outlined,color: Colors.black,),
                              ),
                            ),
                            SizedBox(height: MediaQuery.of(context).size.height /44,),
                            Row(
                              children: const [
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
                              height: MediaQuery.of(context).size.width *0.08,
                              //MediaQuery.of(context).size.height *0.08
                              margin: const EdgeInsets.only(top: 20),
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text('10',),
                                  Text('Product'),

                                ],
                              ),
                            ),
                            Badge(
                              smallSize: 10,
                              backgroundColor: const Color(0xffA2B859),
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: MediaQuery.of(context).size.aspectRatio* 8,
                                child: const Icon(Icons.shopify_outlined,color: Colors.white,),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Exotic fruits',style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w400
                      ),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(name,style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w300
                      ),),
                    ),
                  ),
                  Padding(
                    padding:  const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                    child: Align(
                      //widthFactor: MediaQuery.of(context).size.width/2.5,
                      alignment: Alignment.centerLeft,
                      child: ElevatedButton(
                        onPressed: (){
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent, // Background color of the button
                          primary: const Color(0xffA2B859), // Text color
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0), // Border radius
                            side:  const BorderSide(
                              color: Color(0xffA2B859),
                              width: .5,
                            ), // Border color
                          ),
                        ),
                        child: const Text('Nutrition',style: TextStyle(
                            color: Color(0xffA2B859)
                        ),),

                      ),
                    ),

                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                     // alignment: Alignment.bottomRight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                      ),
                      height: MediaQuery.of(context).size.width *0.14,
                      //
                      margin: const EdgeInsets.only(right: 30),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: MediaQuery.of(context).size.aspectRatio *10,
                            backgroundColor: Colors.black,
                            child: const Icon(
                              Icons.shopping_cart_outlined,color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 5,),
                          const Text('Add to ',),
                          const Text('Order'),

                        ],
                      ),
                    ),
                  )

                ],
              );
            }
          },


          ),
        ),
      ),
    );
  }
}
