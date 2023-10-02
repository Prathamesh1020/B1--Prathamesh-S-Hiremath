import 'dart:js';

import 'package:flutter/material.dart';
import 'package:login_pg/Reset.dart';
import 'package:login_pg/home.dart';
import 'package:login_pg/register.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: validator(),
  ));
}

class validator extends StatelessWidget {
   validator({Key? key}) : super(key:key);
  final GlobalKey<FormState> _key=new GlobalKey<FormState>();
  final usercontroller=TextEditingController();
  final passcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration:   BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/loogg.jpg'),fit: BoxFit.cover)),

      child:   Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [

            Container(
                padding: EdgeInsets.only(left: 465,top: 35),
                child: Column(
                    children: [

                      Text('Welcome User',style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold, fontFamily:'YoungSerif')),
                      SizedBox(height: 35),
                      Image.asset('avatar-removebg-preview.png',height: 100,width: 100,)
                    ])),

            Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height*0.4,
                    right: 400,
                    left: 400),
                child:Form(
                  key: _key,
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            fillColor: Colors.white38,
                            filled: true,
                            hintText: 'Email',
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            prefixIcon: Icon(Icons.email)),
                        validator: (value) {
                          if(value==null || value.isEmpty || !RegExp(r'\S+@\S+\.\S+').hasMatch(value)){
                            return "Enter valid Email ID";
                          }
                          else{
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 25,
                      ),

                      TextFormField(
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            fillColor: Colors.white38,
                            filled: true,
                            hintText: 'Password',
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                            prefixIcon: Icon(Icons.lock)),
                      validator: (value){
                            if(value==null|| value.isEmpty||!RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)").hasMatch(value) || value.length < 7){
                              return "Password contain atleast one Capital Letter, Small Letters, Numbers, \na special character & min length 6";
                            }

                            return null;
                      }
                        ,),

                      SizedBox(
                        height: 30,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sign in', style: TextStyle(color: Colors.black87,
                              fontSize: 20,fontWeight: FontWeight.bold),
                          ),

                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.black54,
                            child: IconButton(
                              icon: Icon(Icons.arrow_forward),
                              color: Colors.amberAccent,
                              onPressed: () {
                                if(_key.currentState!.validate()){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                                }
                              },
                            ),
                          )
                        ],
                      ),

                      SizedBox(
                        height: 60,
                      ),

                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));

                            }, child: Text("Sign up",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.white,
                                    fontSize: 16
                                ))),
                            TextButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPass()));

                            }, child: Text("Forgot Password?",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.white,
                                    fontSize: 16)))
                          ]
                      )

                    ],
                  ),)
            )
          ],
        ),
      ),
    );  }
}




