
import 'package:back_base/wigeds_pages/sing_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SingIn extends StatefulWidget {

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  TextEditingController _emailcontroller = TextEditingController();

  TextEditingController _passwordlcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30,right: 20,left: 20),
          child: Column(
            children: [
              TextFormField(
                controller: _emailcontroller,
                 keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Enter Your Email',
                  labelText: "Email",

                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green,width: 3.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                controller: _passwordlcontroller,
                 keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Enter Your Password',
                  labelText: "Password",

                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green,width: 3.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(height: 10,),

              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){

              },
                  child: Text("Log In")),
              SizedBox(height: 20,),
              TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SingUp()));
              },
                  child: Text("creates an account? sing up "))
            ],
          ),
        ),
      ),
    );
  }
}
