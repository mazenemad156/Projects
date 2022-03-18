import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shopping_app/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_)=>const HomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:Padding(
          padding: const EdgeInsets.all(40.0),
          child: Center(
          child:   Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/nike.png",color: Colors.black54,),

            Center(
              child: LoadingAnimationWidget.inkDrop(
                color:Colors.black54,
                size: 200,

              ),),
            ],
          ),
      ),
        ),),
    );
  }
}
