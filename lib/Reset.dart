import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_pg/home.dart';
import 'package:login_pg/main.dart';
import 'package:login_pg/register.dart';

class ResetPass extends StatelessWidget {
   ResetPass({Key? key}) : super(key: key);
  final GlobalKey<FormState> _key = new GlobalKey<FormState>();
  final usercontroller = TextEditingController();
  final passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {


    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bckgrnd.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
                padding: EdgeInsets.only(left: 465, top: 35),
                child: Column(children: [
                  Text('Reset your password',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 35),
                  Image.asset(
                    'avatar-removebg-preview.png',
                    height: 100,
                    width: 100,
                  )
                ])),
            Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4,
                    right: 400,
                    left: 400),
                child: Form(
                  key: _key,
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            fillColor: Colors.black12,
                            filled: true,
                            hintText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            prefixIcon: Icon(Icons.email)),
                        validator: (value) {
                          if (value == null ||
                              value.isEmpty ||
                              !RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                            return "Enter valid Email ID";
                          } else {
                            return null;
                          }
                        },
                      ),


                      SizedBox(
                        height: 30,
                      ),

                      ElevatedButton(
                        onPressed: () {
                          if(_key.currentState!.validate()){
                            showDialog(context: context, builder: (context){
                              return Container(
                                child: AlertDialog(
                                  title: Text("A password reset email has been sent to the registered account"),
                                ),
                              );
                            });
                          }
                          }
                            ,
                        child: Text("Reset Password",style: TextStyle(color: Colors.black),),),

                      SizedBox(
                        height: 30,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Remembered password?"),
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>validator()));

                          }, child: Text(
                                'Signin',
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 15,
                                  decoration: TextDecoration.underline,
                                )
                              ))
                        ],
                      ),

                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
