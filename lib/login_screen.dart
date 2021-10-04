// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:alliance/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.fill)),
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 120),
          child: Column(
            children: [
              // ignore: prefer_const_constructors
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(top: 225, bottom: 10),
                child: Text(
                  'Welcome back,',
                  style: TextStyle(
                      fontSize: 28,
                      fontFamily: "Montserrat-Bold",
                      fontWeight: FontWeight.w900),
                  textAlign: TextAlign.left,
                ),
              ),

              Container(
                width: double.infinity,
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Please read the updated Terms\nand Conditions.',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Montserrat-Light',
                      fontWeight: FontWeight.w300),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextField(
                  decoration: InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff191A22))),
                      focusColor: Color(0xff191A22),
                      hintText: 'Username',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontFamily: "Montserrat-Light",
                        color: Color(0xff191A22).withOpacity(0.5),
                      )),
                  obscureText: false,
                ),
              ),
              Padding(padding: EdgeInsets.all(8)),
              TextField(
                decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff191A22))),
                    filled: false,
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontFamily: "Montserrat-Light",
                      color: Color(0xff191A22).withOpacity(0.5),
                    )),
                obscureText: true,
              ),
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.only(top: 40),
                      alignment: Alignment.bottomLeft,
                      child: RichText(
                        text: TextSpan(
                          text: 'Forgot Your Password? ',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff191A22)),
                          children: <TextSpan>[
                            TextSpan(
                                text: '\nClick Here',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 12,
                                    decoration: TextDecoration.underline),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => print('Under Construction')),
                          ],
                        ),
                      )),
                  Container(
                    width: 200,
                    padding: EdgeInsets.only(left: 30, top: 37),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          );
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Montserrat-Bold',
                              fontWeight: FontWeight.w600),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xff191A22)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(15)),
                            elevation: MaterialStateProperty.all(0))),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
