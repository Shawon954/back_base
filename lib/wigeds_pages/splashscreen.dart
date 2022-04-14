import 'dart:async';

import 'package:back_base/wigeds_pages/sing_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SingIn())));
    return Scaffold(
      body: Center(
        child:SpinKitFadingCube(
          duration: Duration(seconds: 3),
          color: Colors.orange,
          size: 100,
        ),
      ),
    );
  }
}
