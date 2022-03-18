import 'package:flutter/material.dart';
import 'package:shopping_app/constants.dart';
import 'package:shopping_app/screens/search_page.dart';
import 'package:shopping_app/screens/wishlist_page.dart';
import 'package:shopping_app/widgets/my_appbar.dart';
import 'package:shopping_app/widgets/my_drawer.dart';
import 'home_page.dart';
import 'my_shopping_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int selectIndex = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kMainColor,
      drawer: const MyDrawer(),
      appBar: const MyAppBar(),
      body: getBody(),
      floatingActionButton: getFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: getBottomNavigationBar(size),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: selectIndex,
      children: const [
        HomePage(),
        SearchPage(),
        MyShoppingPage(),
        WishListPage(),
      ],
    );
  }

  Widget getBottomNavigationBar(size) {
    return SizedBox(
      height: 60,
      width: size.width,
      child: BottomAppBar(
        color: Colors.white,
        elevation: 0.0,
        //shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: SizedBox(
          width: size.width / 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      selectIndex = 0;
                    });
                  },
                  icon: selectIndex == 0
                      ? const Icon(
                          Icons.home,
                          color: Colors.orange,
                          size: 35,
                        )
                      : Icon(
                          Icons.home,
                          color: Colors.grey[600],
                        )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      selectIndex = 1;
                    });
                  },
                  icon: selectIndex == 1
                      ? const Icon(
                          Icons.search,
                          color: Colors.orange,
                          size: 35,
                        )
                      : Icon(
                          Icons.search,
                          color: Colors.grey[600],
                        )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      selectIndex = 2;
                    });
                  },
                  icon: selectIndex == 2
                      ? const Icon(
                          Icons.shopping_bag_sharp,
                          color: Colors.orange,
                          size: 35,
                        )
                      : Icon(
                          Icons.shopping_bag_sharp,
                          color: Colors.grey[600],
                        )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      selectIndex = 3;
                    });
                  },
                  icon: selectIndex == 3
                      ? Image.asset(
                          "assets/images/heart.png",
                          color: Colors.orange,
                          height: 45,
                          width: 45,
                        )
                      : Image.asset(
                          "assets/images/heart.png",
                          color: Colors.grey[600],
                        )),
            ],
          ),
        ),
      ),
    );
  }

  Widget getFloatingActionButton() {
    return Container();
  }
}
