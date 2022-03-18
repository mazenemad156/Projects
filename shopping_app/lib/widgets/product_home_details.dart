import 'package:flutter/material.dart';
import 'package:shopping_app/screens/home_page.dart';
import 'package:shopping_app/screens/home_screen.dart';
import 'package:shopping_app/screens/my_shopping_page.dart';

class ProductHomeDetails extends StatelessWidget {
  const ProductHomeDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget getBody() {
    return IndexedStack(
      index: selectIndex,
      children: const [HomePage(), MyShoppingPage()],
    );
  }
}
