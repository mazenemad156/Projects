import 'package:flutter/material.dart';
import 'package:shopping_app/screens/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/nike.png",height: 50,),
        const SizedBox(
          height: 50,
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(

                  side: BorderSide.none,
                  primary: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: const TextStyle(fontSize: 20),

                ),
                child: const Text('Login',style: TextStyle(
                    color: Colors.orange
                ),),
                onPressed: () {
                  },
              ),
            ),
          ],),
        ),

          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(

                  side: const BorderSide(color: Colors.white),
                  primary: Colors.orange,
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: const TextStyle(fontSize: 20),

                ),
                child: const Text('Register Now',style: TextStyle(
                    color: Colors.white,
                  fontSize: 25,fontWeight: FontWeight.bold
                ),),
                onPressed: () {

                  Navigator.push(context,
                      MaterialPageRoute(builder:(_)=> const LoginScreen()));

                },
              ),
            ),
          ],),
        ),
          TextButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              textStyle: const TextStyle(fontSize: 20),

            ),
            child: const Text('Quick Login With touch ID',style: TextStyle(
                color: Colors.white,
                fontSize: 19,
            ),),
            onPressed: () {

            },
          ),
          Image.asset("assets/images/finger.png",height: 100,
          color: Colors.white70,
          ),

          TextButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              textStyle: const TextStyle(fontSize: 20),
            ),
            child: const Text(' touch ID',style: TextStyle(
              color: Colors.white,
              fontSize: 19,
            ),),
            onPressed: () {
              },
          ),
        ],
      ),
    );
  }
}
