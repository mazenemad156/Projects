import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference users = FirebaseFirestore.instance.collection('users');

  void createUser(String email, String password) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();

      final UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      //                      Key         Value
      await prefs.setString('userId', userCredential.user!.uid);
      //          Key
      prefs.get('userId');

      await addUserToFirestore('Mohamed', userCredential.user!.email!);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print("this error on firebase $e");
    }
  }

  Future<void> addUserToFirestore(String fullName, String email) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    return users.add({
          'full_name': fullName,
          'email': email,
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
}
