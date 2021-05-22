import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:serv_udyam/home/Home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MyHomePage extends StatelessWidget{
  String cardNumber;
  final _phoneController = TextEditingController();
  final _codeController = TextEditingController();
  Future<void> loginUser(String phone, BuildContext context) async{
    FirebaseAuth _auth = FirebaseAuth.instance;

    _auth.verifyPhoneNumber(
        phoneNumber: phone,
        timeout: Duration(seconds: 60),
        verificationCompleted: (AuthCredential credential) async{
          Navigator.of(context).pop();

          UserCredential result = await _auth.signInWithCredential(credential);

          User user = result.user;

          if(user != null){
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => Home()
            ));
          }else{
            print("Error");
          }

          //This callback would gets called when verification is done auto maticlly
        },
        verificationFailed: (Exception exception) async {
          print(exception);
        },
        codeSent: (String verificationId, [ int forceResendingToken]){
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) {
                return AlertDialog(
                  title: Text("Give the code?"),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextField(
                        controller: _codeController,
                      ),
                    ],
                  ),
                  actions: <Widget>[
                    FlatButton(
                      child: Text("Confirm"),
                      textColor: Colors.white,
                      color: Colors.blue,
                      onPressed: () async{
                        final code = _codeController.text.trim();
                        AuthCredential credential = PhoneAuthProvider.credential(verificationId: verificationId, smsCode: code);

                        UserCredential result = await _auth.signInWithCredential(credential);

                        User user = result.user;

                        if(user != null){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => Home()
                          ));
                        }else{
                          print("Error");
                        }
                      },
                    )
                  ],
                );
              }
          );
        },
        codeAutoRetrievalTimeout: null
    );
    // return await  loginUser();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  Container(
                      height: 200.0,
                      width: 500.0,
                      decoration: new BoxDecoration(
                        border: Border.all(
                          color: Colors.transparent,
                          width: 8,
                        ),
                        // color: kPrimaryColor,
                        gradient: LinearGradient(colors: [
                          Colors.blue,
                          //  Colors.lightBlue,
                          Colors.lightBlueAccent,

                        ]),
                        image: new DecorationImage(
                          image: new AssetImage('assets/logo3.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                      )
                  ),


                  SizedBox(
                      height: 30),
                  SizedBox(height: 0,),
                  Text(
                    " Please Enter Your Mobile Number",
                    style: TextStyle(
                      fontSize: 24.0,
                      //color: Colors.white,
                    ),
                  ),
                  SizedBox(
                      height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color:Colors.grey)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color : Colors.grey)
                      ),
                      filled: true,
                      fillColor: Colors.grey[100],
                      hintText: "Mobile Number",
                      prefix: Padding(
                        padding: EdgeInsets.all(4),
                        child: Text('+91'),
                      ),

                    ),
                    controller: _phoneController,
                  ),

                  Container(
                    alignment: Alignment.center,
                    child :RaisedButton( color: Colors.blue[300],
                      //textColor: Colors.white,
                      child: Text('Get OTP'),
                      onPressed: () {
                        final phone = _phoneController.text.trim();

                        loginUser(phone, context);
                        //selectHandler();
                      },), )
                ],
              ),
            ),
          ],
        ),),);
  }
}
