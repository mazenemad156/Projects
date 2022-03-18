import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),

            Image.asset("assets/images/nike.png",height: 50,
              color: Colors.orange[900],),
          const SizedBox(
            height: 50,
          ),



          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 13),
                child: Text("Email id",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,

                  ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [

                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(10)
                        ),

                        padding: const EdgeInsets.all(6.0),
                        margin: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          enabled: true,

                          cursorColor: Colors.grey,
                          decoration: InputDecoration(

                              border: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.white12),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusColor:  Colors.grey,
                              hintText: "franknz@gmailcom"
                          ),
                        )),
                  ),
                ],),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 13),
                child: Text("Password",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,

                  ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [

                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(10)
                        ),

                        padding: const EdgeInsets.all(6.0),
                        margin: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          enabled: true,

                          cursorColor: Colors.grey,
                          decoration: InputDecoration(

                              border: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.white12),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusColor:  Colors.grey,
                              hintText: "***********"
                          ),
                        )),
                  ),
                ],),
              ),
            ],
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
                  child: const Text('Login',style: TextStyle(
                      color: Colors.white,
                    fontSize: 25,fontWeight: FontWeight.bold
                  ),),
                  onPressed: () {},
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



            TextButton(
              style: ElevatedButton.styleFrom(



                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle: const TextStyle(fontSize: 20),

              ),
              child: const Text(' touch ID',style: TextStyle(
                color: Colors.black54,
                fontSize: 19,
              ),),
              onPressed: () {

              },
            ),
          ],
        ),
      ),
    );
  }
}
