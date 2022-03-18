import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/util/home_page_json.dart';
import 'package:shopping_app/widgets/Custom_text_button.dart';
import 'package:shopping_app/widgets/text_title.dart';
import 'cart_detail_scree.dart';

class MyShoppingPage extends StatefulWidget {
  const MyShoppingPage({Key key}) : super(key: key);

  @override
  _MyShoppingPageState createState() => _MyShoppingPageState();
}

class _MyShoppingPageState extends State<MyShoppingPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return  getBody(size,context);
  }
}

Widget getBody(size,context) {
  return Padding(
    padding: const EdgeInsets.all(11.0),
    child: ListView(
      children: [
        TextTitle(text: "Shopping",size: 28,),
        TextTitle(text: "Cart",size: 35,
        fontWeight: FontWeight.bold,
        ),
        ///--------------Cart
      Column(children: List.generate(newArrivals.length, (index) {
        return
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Container(
                  height: 130,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(15)
                  ),
                ),
                Positioned(
                  bottom:25,
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(15)
                    ),
                  ),
                ),
                Positioned(

                  child: Container(
                    height: 150,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15)
                    ),
                    child: Image.asset(newArrivals[index]["imageUrl"],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),

            Column(
              children: [
                TextTitle(text: newArrivals[index]["name"],
                  size: 20,fontWeight: FontWeight.bold,
                ),
                Row(
                  children: [
                    USD,
                    TextTitle(text: "  ${newArrivals[index]["price"]}",
                      size: 18, fontWeight: FontWeight.bold,
                    ),

                  ],
                ),
              ],
            ),

            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Center(
                child: TextTitle(text: "x1",
                  size: 18,fontWeight: FontWeight.bold,
                ),
              ),
            ),

          ],);
      }),),

      const Divider(thickness: 2,),
        ///total price

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          USD ,
          TextTitle(text: "1320",size: 25,)
        ],),

        ///-------next Button

         Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          child: CustomTextButton(
            text: "Next",
          color: Colors.white,
         onPressed: (){
              Navigator.pushReplacement(context,  MaterialPageRoute(builder: (c)=>const CartDetailScreen()));
         },
          ),
        ),

      ],

    ),
  );
}
