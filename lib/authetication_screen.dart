// ignore_for_file: prefer_const_constructors

import 'package:alliance/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image:
                      AssetImage('assets/images/Authentication_Background.png'),
                  fit: BoxFit.fill)),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: RichText(
                  text: TextSpan(
                    text: 'ALLIANCE',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Montserrat-SemiBold',
                        color: Color(0xff191A22)),
                    // ignore: prefer_const_literals_to_create_immutables
                    children: <TextSpan>[
                      TextSpan(
                        text: '\n©2021-2022. All Rights Reserved.',
                        style: TextStyle(
                          color: Color(0xff191A22),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Montserrat-Light',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 17,
              ),
              // ignore: prefer_const_constructors
              Container(
                width: double.infinity,
                child: Text(
                  'Your\nBanking\nCompanion',
                  style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'MontSerrat-Bold',
                      fontWeight: FontWeight.w900),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
              ),

              Row(
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width / 1.2,
                    ),
                    width: 350,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                          );
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Montserrat-Bold',
                              fontWeight: FontWeight.w600),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xff191A22)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13))),
                            padding:
                                MaterialStateProperty.all(EdgeInsets.all(15)),
                            elevation: MaterialStateProperty.all(0))),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 2),
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width / 1.2,
                    ),
                    width: 350,
                    child: ElevatedButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Under Development')));
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Montserrat-Bold',
                              fontWeight: FontWeight.w600),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xff191A22)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(13))),
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
