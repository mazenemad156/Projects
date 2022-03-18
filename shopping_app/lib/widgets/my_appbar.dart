import 'package:flutter/material.dart';
import '../constants.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget{
  const MyAppBar({Key key}) : super(key: key);
  @override
  Size get preferredSize => Size(56, 5+AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: const Size.fromHeight(55),
        child:  AppBar(
      elevation: 0,
      backgroundColor: kMainColor,
      automaticallyImplyLeading: true,
      iconTheme: const IconThemeData(color: Colors.grey),
      actions: const [
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(
            "assets/images/user.png",
          ),
        ),
      ],
    ), );
  }



}
