import 'package:flutter/material.dart';
import 'package:sign_in/numeric_pad.dart';

class VerifyPhone extends StatefulWidget {


  late final String phonenumber;
  VerifyPhone({required this.phonenumber});
  @override
  _VerifyPhoneState createState() => _VerifyPhoneState();
}

class _VerifyPhoneState extends State<VerifyPhone> {
  int num=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){Navigator.pop(context);},
            child: Icon(Icons.arrow_back,color: Colors.black,size: 38,)),
        backgroundColor: Colors.white,
        title: Center(
          child: Text("Verify phone number",
            // textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Text("Code is sent to "+ widget.phonenumber,
                  textAlign: TextAlign.center,
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.grey,
                  ),

                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal:25.0,vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    BuildNumberr(num),
                    BuildNumberr(num),
                    BuildNumberr(num),
                    BuildNumberr(num),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Didn't recieve the code?",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*.13,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: (){},
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [Colors.orangeAccent,Colors.lightBlueAccent],
                                  )
                              ),
                              child: Center(
                                child: Text("Verify and create account",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,

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
              ),
              Padding(
                padding: const EdgeInsets.only(top:5.0),
                child: NumericPad(onNumberSelected: (value) {}
              )
              )],
          ),
        ),



      ),
    );
  }
  Widget BuildNumberr(int number) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
              color: Colors.orangeAccent[200],
              borderRadius: BorderRadius.circular(16),
           boxShadow: <BoxShadow>[
             BoxShadow(
               color: Colors.orangeAccent,
               offset: Offset(0,0),
               blurRadius: 20,
             )

           ]
          ),
          child: Center(
            child: Text(
              num.toString(),
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),


        ),
      ),
    );
  }





}
