// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:alliance/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                    fit: BoxFit.cover)),
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 120),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                ),
                // ignore: prefer_const_constructors
                Container(
                  width: double.maxFinite,
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
                SizedBox(
                  height: MediaQuery.of(context).size.height / 80,
                ),
                Form(
                    key: formGlobalKey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) => value == "admin" ? null : '',
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff191A22))),
                              focusColor: Color(0xff191A22),
                              hintText: 'Username',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w200,
                                fontFamily: "Montserrat-Light",
                                color: Color(0xff191A22).withOpacity(0.5),
                              )),
                          obscureText: false,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 80,
                        ),
                        TextFormField(
                          validator: (value) => value == "admin" ? null : '',
                          decoration: InputDecoration(
                              errorStyle: TextStyle(height: 0),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Color(0xff191A22))),
                              filled: false,
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w200,
                                fontFamily: "Montserrat-Light",
                                color: Color(0xff191A22).withOpacity(0.5),
                              )),
                          obscureText: true,
                        ),
                      ],
                    )),

                Row(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 20,
                    ),
                    Container(
                        alignment: Alignment.bottomLeft,
                        child: RichText(
                          text: TextSpan(
                            text: 'Forgot Your Password? ',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff191A22)),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '\nClick Here',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 12,
                                      decoration: TextDecoration.underline),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap =
                                        () => print('Under Construction')),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 7,
                      height: MediaQuery.of(context).size.height / 7,
                    ),
                    Container(
                      width: 120,
                      child: ElevatedButton(
                          onPressed: () {
                            if (formGlobalKey.currentState!.validate()) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text('Invalid Credentials')));
                            }
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
      ),
    );
  }
}
