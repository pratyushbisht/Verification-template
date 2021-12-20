import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_in/numeric_pad.dart';
import 'package:sign_in/verify_phone.dart';

class ContinueWithPhone extends StatefulWidget {
  @override
  _ContinueWithPhoneState createState() => _ContinueWithPhoneState();
}

class _ContinueWithPhoneState extends State<ContinueWithPhone> {
  String phonenumber="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       leading: Icon(
         Icons.close,
         size: 30,
         color: Colors.black,
       ),
     title: Text("Continue with phone",
     textAlign: TextAlign.center,
       style: TextStyle(
         fontSize: 18,
         fontWeight: FontWeight.bold,
         color: Colors.black,
       ),
     ),
backgroundColor: Colors.white,
       elevation: 0,
       centerTitle: true,

     ),

    body: SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops:[0.1, 0.9],
                  colors: [
                    Color(0xFFFFFFFF),
                Color(0xFFF7F7F7),
                ]
                ),

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 130,
                    child: new Image.asset("assets/images/holding-phone.png"),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 14,horizontal: 64),
                    child: Text("You will recieve a 4 digit code to verify next",
                    textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        color: Color(0xFF818181),
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),


          Container(
            height: MediaQuery.of(context).size.height*0.13,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  Container(
                    width: 230,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Enter your phone",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,

                        ),
                        ),
                        Text(phonenumber,
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,

                          ),
                        ),
                      ],


                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, 
                        MaterialPageRoute(builder: (context)=>VerifyPhone(phonenumber: phonenumber,))
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.yellowAccent,Colors.white],
                          )
                        ),
                        child: Center(
                          child: Text("Continue",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,

                          ),


                          ),
                        ),
                      ),
                    ),
                  )
                ],



              ),


            ),







          ),

      NumericPad(onNumberSelected: (value ) {
        setState(() {
          if(value!=-1){
            phonenumber=phonenumber+value.toString();
          }
          else{
            phonenumber=phonenumber.substring(0,phonenumber.length-1);
          }
        });


      },),

        ],
      ),








    ),

    );
  }
}
