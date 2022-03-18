import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/util/home_page_json.dart';
import 'package:shopping_app/widgets/custom_text_field.dart';
import 'package:shopping_app/widgets/product_categories.dart';
import 'package:shopping_app/widgets/text_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kMainColor,
          body: getBody(size)),
    );
  }

  Widget getBody(size){
    return ListView(

      children: [
        ///OUR Product
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: TextTitle(
            text: 'our',
            fontWeight: FontWeight.normal,
            size: 25,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: TextTitle(
            text: 'Products',
            fontWeight: FontWeight.bold,
            size: 25,
          ),
        ),

        ///Search Row
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              ///--------------Search Product
              CustomTextField(

                data: (Icons.search),
                hintText:'Search Product', isObscure: true ,
              ),
              const SizedBox(
                width: 10,
              ),

              Container(
                height: 45,
                width: 45,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: const Icon(
                  Icons.view_headline,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        ///Category

        const ProductCategories(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
           children: List.generate(newArrivals.length, (index) {
             return   Padding(padding: const EdgeInsets.all(8),
             child: Container(
               height: 300,
               width:200,
               padding: const EdgeInsets.all(8),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 color: Colors.white,
               ),
               child: Column(
                 children: [
                   Stack(
                     children: [
                       IconButton(
                         onPressed: (){},
                         icon: Image.asset("assets/images/heart.png"), )
                       , Positioned(
                         right: 45,
                         top: 40,
                         child: CircleAvatar(
                           backgroundColor: Colors.orange.shade100,
                           radius: 50,
                         ),
                       ),
                       SizedBox(
                         height: 180,
                         width:210,
                         child: Image.asset(newArrivals[index]["imageUrl"],
                           fit: BoxFit.fill,
                         ),
                       ),

                     ],
                   ),
                   Column(
                     children: [
                       TextTitle(text:newArrivals[index]["name"],
                         fontWeight: FontWeight.w600,
                         size: 20,
                       ),
                       TextTitle(text:newArrivals[index]["description"],
                         fontWeight: FontWeight.bold,
                         size: 18,
                         color: Colors.orange,
                       ),
                       TextTitle(text:newArrivals[index]["price"],
                         fontWeight: FontWeight.bold,
                         size: 20,

                       ),
                     ],
                   ),

                 ],
               ),
             ),
             );
           }),
          ),
        ),
      ],
    );
  }
}


