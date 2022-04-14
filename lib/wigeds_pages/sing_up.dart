
import 'package:back_base/database/database_helper.dart';
import 'package:flutter/material.dart';
class SingUp extends StatelessWidget {


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

                final email = _emailcontroller.text;
                final pass = _passwordlcontroller.text;

                var datas = DataHelper();
                datas.signUp(email, pass, context);


              },
                  child: Text("Sing Up")),
              SizedBox(height: 20,),
              TextButton(onPressed: (){
                Navigator.pop(context);
              },
                  child: Text("alrady creates an account? LogIn "))
            ],
          ),
        ),
      ),
    );
  }
}
