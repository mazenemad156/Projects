import 'package:flutter/material.dart';
import 'package:shopping_app/util/product_categories_json.dart';
import 'package:shopping_app/widgets/text_title.dart';

class ProductCategories extends StatefulWidget {
  const ProductCategories({Key key}) : super(key: key);
  @override
  State<ProductCategories> createState() => _ProductCategoriesState();
}

class _ProductCategoriesState extends State<ProductCategories> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return categoryList(size);
  }

  Widget categoryList(size) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(productCategories.length, (index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: OutlinedButton.icon(
            label: TextTitle(
              text: productCategories[index]["name"],
              size: 21,
              fontWeight: FontWeight.normal,
            ),
            icon: Image.asset(productCategories[index]["imageUrl"]),
            style: OutlinedButton.styleFrom(
              primary: Colors.black,
              backgroundColor: Colors.white,
              side: const BorderSide(color: Colors.orange, width: 1),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(13))),
            ),
            onPressed: () {},
          ),
        );
      })),
    );
  }
}
