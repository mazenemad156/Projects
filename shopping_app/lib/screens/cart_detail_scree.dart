import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/util/home_page_json.dart';
import 'package:shopping_app/widgets/text_title.dart';

class CartDetailScreen extends StatefulWidget {
  const CartDetailScreen({Key key}) : super(key: key);

  @override
  _CartDetailScreenState createState() => _CartDetailScreenState();
}

class _CartDetailScreenState extends State<CartDetailScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset:true,
      backgroundColor: kMainColor,
      appBar: myAppBar(),
      body: cartBody() ,
    );
  }

   myAppBar() {
    return PreferredSize(
        preferredSize: const Size.fromHeight(55.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.all(5.0),
            child: OutlinedButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              child: const Icon(Icons.arrow_back_ios,
              color: Colors.black,
              ),
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(20, 20),
                primary: Colors.black,
                backgroundColor: kMainColor,
                side:  BorderSide(color: Colors.grey.shade700, width: 1),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(13))),
              ),
            ),
          ),
          actions: [
            IconButton(onPressed: (){},
                icon: const Icon(Icons.favorite,
                  color: Colors.red,
                size: 28,),),
          ],
        ));
  }

  cartBody() {
    return Column(
      children: [
        Stack(
          children: [
            Positioned(
              left:MediaQuery.of(context).size.width * 0.2 ,
              bottom: MediaQuery.of(context).size.width * 0.1,
              child: Container(
           width:MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),

                ),
              child: TextTitle(text:newArrivals[0]["nameBackground"],
              size: MediaQuery.of(context).size.width * 0.4,
                color: Colors.grey.shade400,
                fontWeight: FontWeight.bold,
              ),

              ),
            ),
            Container(
           width:MediaQuery.of(context).size.width ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),

              ),
            child: Image.asset(newArrivals[0]["imageCart"],

            ),

            ),
           Positioned(
             top: 190,
             right: 20,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children:  List.generate(newArrivals[0]["imageSlider"].length, (index) {
                 return Padding(
                   padding: const EdgeInsets.all(2.0),
                   child: OutlinedButton(
                     child: Image.asset(newArrivals[0]["imageSlider"][index],
                     width: 40,
                       height: 35,
                     ),
                     style: OutlinedButton.styleFrom(
                       minimumSize: const Size(30, 40),
                       primary: Colors.black,
                       backgroundColor: kMainColor,
                       side:  BorderSide(color: Colors.grey.shade700, width: 1),
                       shape: const RoundedRectangleBorder(
                           borderRadius: BorderRadius.all(Radius.circular(13))),
                     ),
                     onPressed: () {},
                   ),
                 );
               })
             ),
           ),


          ],),

        Positioned(
          top: 190,
          child:Expanded(

            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),topRight: Radius.circular(35),
                  ),
              ),
              ///Second Main Column
              child: Column(
               // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15,),
                  /// name - Price - Rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    TextTitle(text: newArrivals[0]["name"],
                    size: 25,fontWeight: FontWeight.bold,
                    ),
                  Column(
                    children: [
                      Row(children: [
                        USD,
                        TextTitle(text: newArrivals[0]["price"],
                          size: 20,fontWeight: FontWeight.bold,
                        ),
                      ],),

                      RatingBarIndicator(
                          itemCount: 5,
                          rating: 5,
                          itemSize: 17,
                          direction: Axis.horizontal,
                          itemBuilder: (context,index)=>const Icon(Icons.star,
                            color: Colors.yellow,
                          )),
                    ],
                  ),
                ],),
                  ///Available sizes and prices
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 10,),
                      TextTitle(text: "Available Size",
                      size: 20,textAlign: TextAlign.start,
                      ),

                    ],
                  ),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  List.generate(newArrivals[0]["prices"].length, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: OutlinedButton(
                            child:Text(newArrivals[0]["prices"][index],
                            ),
                            style: OutlinedButton.styleFrom(
                              minimumSize: const Size(30, 40),
                              primary: Colors.black,
                              backgroundColor: kMainColor,
                              side:  BorderSide(color: Colors.grey.shade700, width: 1),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(13))),
                            ),
                            onPressed: () {},
                          ),
                        );
                      })
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 10,),
                      TextTitle(text: "Available Colors",
                      size: 20,textAlign: TextAlign.start,
                      ),

                    ],
                  ),
                  ///----------Colored Icons Check
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  List.generate(newArrivals[0]["colors"].length, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(2.0),
                          child:
                          IconButton(
                            icon: const Icon(Icons.check_circle),
                            color: newArrivals[0]["colors"][index],

                            iconSize: 30,
                            onPressed: () {
                              // setState(() {
                              //   _isBluetoothOn = !_isBluetoothOn;
                              // });
                            },
                          ),
                        );
                      })
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width: 10,),
                      TextTitle(text: "Description",
                        size: 20,textAlign: TextAlign.start,
                      ),

                    ],
                  ),
                  TextTitle(text: newArrivals[0]["itemDescription"]
                    ,),
                ],
              ),
            ),
          ), ),
      ],
    );
  }
}