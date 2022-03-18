import 'package:e_learning_trial_app/Pages/Login.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // TextEditingController _emailAddress = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _mobileNumber = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _validateForm() {
    final formState = _formKey.currentState;
    return formState!.validate() ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(30),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  color: Colors.purple,
                  padding: const EdgeInsets.only(top: 30),
                  child: Center(
                    child: Text(
                      " تسجيل حساب جديد",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: "الاسم كاملا",
                    border: OutlineInputBorder(),
                  ),
                  validator: (val) =>
                      val!.isEmpty ? 'الاسم يجب الا يكون فارغا !' : null,
                ),
                SizedBox(
                  height: 2.5,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "  البريد الالكتروني يجب الا يكون فارغا",
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (val) =>
                      val!.isEmpty ? 'البريد الالكتروني !' : null,
                ),
                SizedBox(
                  height: 2.5,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "كلمة المرور",
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.visibility),
                      prefixIcon: Icon(Icons.lock)),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  validator: (val) =>
                      val!.isEmpty ? 'كلمة المرور يجب الا تكون فارغة!' : null,
                ),
                SizedBox(
                  height: 2.5,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "تاكيد كلمة المرور",
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.visibility),
                      prefixIcon: Icon(Icons.lock)),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  validator: (val) =>
                      val!.isEmpty ? 'يجب تطابق كلمة المرور' : null,
                ),
                SizedBox(
                  height: 2.5,
                ),
                TextFormField(
                  controller: _mobileNumber,
                  decoration: InputDecoration(
                    labelText: "0000 0000 0000",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 2.5,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "الدولة",
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.arrow_drop_down),
                      prefixIcon: Icon(Icons.lock)),
                ),
                SizedBox(
                  height: 2.5,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: " تاريخ الميلاد",
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.calendar_today_outlined),
                      prefixIcon: Icon(Icons.lock)),
                ),
                SizedBox(
                  height: 2.5,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "الدولة",
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.arrow_drop_down),
                      prefixIcon: Icon(Icons.lock)),
                ),
                SizedBox(
                  height: 2.5,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: " المرحلة الدراسية",
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.arrow_drop_down),
                      prefixIcon: Icon(Icons.lock)),
                ),

                Container(
                  color: Colors.purple,
                  child: MaterialButton(
                    onPressed: () {
                      if (_validateForm()) { Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                            return Login();
                          }));}
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
