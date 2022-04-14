


import 'package:back_base/wigeds_pages/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DataHelper{

  // Future singUp(email,password,context) async{
  //
  //   try{
  //     UserCredential userCredential =
  //     await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
  //
  //     var authCredential = userCredential.user;
  //     print(authCredential);
  //
  //     if(authCredential!.uid.isNotEmpty){
  //       Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
  //     }
  //     else{
  //       return "singup failed";
  //     }
  //   }
  //   catch(e){
  //     throw Exception(
  //         "Problem while JSON decoding results. [error=${e.toString()}]");
  //   }
  //
  // }

  Future signUp(email, password, context) async {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);

        var authCredential = userCredential.user;
        print(authCredential);
        if (authCredential!.uid.isNotEmpty) {
          // box.write('id', authCredential.uid);
          Navigator.push(
              context, CupertinoPageRoute(builder: (_) => HomePage()));
        } else {
          print("sign up failed");
        }
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
        } else if (e.code == 'email-already-in-use') {
          print('The account already exists for that email.');
        }
      } catch (e) {
        print(e);
      }
    }









}