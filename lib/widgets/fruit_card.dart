import 'package:flutter/material.dart';

import '../views/product_details_page.dart';

class FruitCard extends StatelessWidget {
  const FruitCard({super.key, required this.name, required this.image, required this.price, required this.backgroundImage, required this.imageHeight, required this.imageWidth});
  final String name;
  final String image;
  final double price;
  final String backgroundImage;
  final double imageHeight;
  final double imageWidth;

  @override
  Widget build(BuildContext context) {
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
                          Text(name.toString(),
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
                            child: Text('€${price.toString()}',
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
                      return ProductDetailsPage(backgroundImage: backgroundImage, name: name,);
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
          image,
          height: imageHeight,
          width: imageWidth,
          // MediaQuery.of(context).size.height /7
        )
      ],
    );
  }
}
