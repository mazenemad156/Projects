import 'package:e_learning_trial_app/Pages/Category.dart';
import 'package:flutter/material.dart';
import 'SignUp.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(6.0),
        child: Center(
            child: SingleChildScrollView(
                child: Form(
          key: _formKey,
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text(
                  " تسجيل الدخول ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  " لوريم ابسوم تبياعهمىسالااؤالاؤتؤ انبن سهاسيلا نعثص ابكسشك ففععثا لانتبتنيني عباننء تمنلنيت  ",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                  ),
                ),

                SizedBox(
                  height: 25,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(border: Border.all()),
                    height: 190,
                    width: 180,
                    child: SizedBox(
                        height: 170,
                        width: 180,
                        child: Image.asset('assets/images/download.jpg',
                            fit: BoxFit.cover)),
                  ),
                ),
                    SizedBox(
                      height: 15,
                    ),
                 TextFormField(
                  validator: (email) =>
                      email!.isEmpty ? 'Name not valid' : null,
                  controller: usernameController,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: "البريد الالكتروني",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                //Password
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true, // to hidden password
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  // validator: (text) =>
                  //     text!.isEmpty ? 'Password Cannot be Empty' : null,
                  decoration: InputDecoration(
                    labelText: "كلمة المرور",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // Login Button
                Container(
                  width: 400,
                  height: 60,
                  
                  child: ElevatedButton(
                    child: Text("تسجيل"),
                    onPressed: () {Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return  Category();
                        }));},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrangeAccent,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(22.0),
                      ),
                    ),
                  )
                ),
                  
                SizedBox(
                  height: 15,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text("تسجيل"),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(" ليس لديك حساب؟"),
                  ),
                ])
              ])),
        ))),

    );
  }
}
