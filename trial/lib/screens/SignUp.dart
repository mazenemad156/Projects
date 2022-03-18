import 'package:flutter/material.dart';
import 'package:loginscreen/screens/timelines.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _emailAdrees = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _validateForm() {
    final formState = _formKey.currentState;
    return formState!.validate() ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(30),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Center(
                    child: Text(
                      "Sign up",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: "Your Name",
                    border: OutlineInputBorder(),
                  ),
                  validator: (val) =>
                  val!.isEmpty ? 'Name Cannot be Empty!' : null,
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Your Email Address",
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (val) =>
                  val!.isEmpty ? 'Email Cannot be Empty!' : null,
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Your PassWord",
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.visibility),
                      prefixIcon: Icon(Icons.lock)),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  validator: (val) =>
                  val!.isEmpty ? 'Password Cannot be Empty!' : null,
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: () {
                      if (_validateForm()) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                Posts(
                                  username: _usernameController.text,
                                )));
                      }
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
