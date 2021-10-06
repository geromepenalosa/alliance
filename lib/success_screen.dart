// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

/// This is the main application widget.
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String _title = 'Home Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: HomeScreen._title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: <Widget>[
            NavigationRail(
              selectedIndex: _selectedIndex,
              leading: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.person, color: Colors.black),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(10),
                    primary: Color(0xffFFC835),
                  ),
                ),
              ),
              backgroundColor: Color(0xff191A22),
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              labelType: NavigationRailLabelType.selected,
              destinations: const <NavigationRailDestination>[
                NavigationRailDestination(
                  icon: Icon(
                    Icons.holiday_village_outlined,
                    color: Color(0xffF5F8FA),
                  ),
                  selectedIcon: Icon(
                    Icons.holiday_village,
                    color: Color(0xffFFC835),
                  ),
                  label: Text(
                    'Dashboard',
                    style: TextStyle(
                      color: Color(0xffFFC835),
                      fontSize: 10,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                NavigationRailDestination(
                    icon: Icon(Icons.attach_money, color: Color(0xffF5F8FA)),
                    selectedIcon:
                        Icon(Icons.attach_money, color: Color(0xffFFC835)),
                    label: Text(
                      'Transfer\nMoney',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xffFFC835), fontSize: 10),
                    )),
                NavigationRailDestination(
                  padding: EdgeInsets.only(top: 350),
                  icon: Icon(Icons.settings_outlined, color: Color(0xffF5F8FA)),
                  selectedIcon: Icon(
                    Icons.settings,
                    color: Color(0xffFFC835),
                  ),
                  label: Text('Account\nSettings',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xffFFC835), fontSize: 10)),
                ),
              ],
            ),
            const VerticalDivider(thickness: 1, width: 4),
            // This is the main content.
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Transfer \nSuccessful',
                            style: TextStyle(
                                fontSize: 25,
                                color: Color(0xff1473fb),
                                fontWeight: FontWeight.w900),
                            // ignore: prefer_const_literals_to_create_immutables
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          width: 310,
                          height: 350,
                          child: ElevatedButton(
                            onPressed: null,
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                  
                                Container(
                                    padding: EdgeInsets.only(top: 10),
                                    alignment: Alignment.centerLeft,
                                    child: RichText(
                                        text: TextSpan(
                                      text: 'Transfer Details',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.black, fontWeight: FontWeight.w700,),
                                    ))),
                                    
                                Container(
                                    alignment: Alignment.centerLeft,
                                    child: RichText(
                                        text: TextSpan(
                                      text:
                                          'Please enter the correct details below.',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.black87),
                                    ))),
                                Container(
                                    padding: EdgeInsets.only(top: 15),
                                    alignment: Alignment.centerLeft,
                                    child: RichText(
                                        text: TextSpan(
                                      text: "Amount Transferred",
                                      style: TextStyle(
                                          fontSize: 14, color: Color(0xff1473fb)),
                                    ))),    
                                Container(
                                    padding: EdgeInsets.only(top: 15),
                                    alignment: Alignment.centerLeft,
                                    child: RichText(
                                        text: TextSpan(
                                      text: "Receiver's Account \nNumber",
                                      style: TextStyle(
                                          fontSize: 14, color: Color(0xff1473fb)),
                                    ))),
                                Container(
                                    padding: EdgeInsets.only(top: 15),
                                    alignment: Alignment.centerLeft,
                                    child: RichText(
                                        text: TextSpan(
                                      text: "Receiver's Account \nName",
                                      style: TextStyle(
                                          fontSize: 14, color: Color(0xff1473fb)),
                                    ))),
                                Container(
                                    padding: EdgeInsets.only(top: 15),
                                    alignment: Alignment.centerLeft,
                                    child: RichText(
                                        text: TextSpan(
                                      text: 'Note',
                                      style: TextStyle(
                                          fontSize: 14, color: Color(0xff1473fb)),
                                    ))),
                                Container(
                                    padding: EdgeInsets.only(top: 15),
                                    alignment: Alignment.centerLeft,
                                    child: RichText(
                                        text: TextSpan(
                                      text: 'Transaction \nNumber',
                                      style: TextStyle(
                                          fontSize: 14, color: Color(0xff1473fb)),
                                    ))),
                                Container(
                                    padding: EdgeInsets.only(top: 15),
                                    alignment: Alignment.centerLeft,
                                    child: RichText(
                                        text: TextSpan(
                                      text: 'Transaction \nDate',
                                      style: TextStyle(
                                          fontSize: 14, color: Color(0xff1473fb)),
                                    ))),
                                Container(
                                    padding: EdgeInsets.only(top: 15),
                                    alignment: Alignment.centerLeft,
                                    child: RichText(
                                        text: TextSpan(
                                      text: 'Current Balance',
                                      style: TextStyle(
                                          fontSize: 14, color: Color(0xff1473fb)),
                                    ))),
                              ],
                            ),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 150),
                      child: Column(
                        children: [
                          // ignore: prefer_const_literals_to_create_immutables
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'Payment Method',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xff191A22),
                                          fontWeight: FontWeight.w900),
                                      // ignore: prefer_const_literals_to_create_immutables
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),

                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          width: 310,
                          height: 110,
                          child: ElevatedButton(
                            onPressed: null,
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Container(
                                    padding: EdgeInsets.only(top: 10),
                                    alignment: Alignment.centerLeft,
                                    child: Text('XXXX XXXX XXXX 1234')),
                                            Container(
                                    padding: EdgeInsets.only(top: 40),
                                    alignment: Alignment.bottomRight,
                                    child: Text('02/22'))
                              ],
                            ),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 15),
                          width: 310,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: (){},
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Container(
                                    padding: EdgeInsets.only(top: 5),
                                    alignment: Alignment.center,
                                    child: RichText(
                                      text: TextSpan(
                                        text: '>',
                                        style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.white),
                                        // ignore: prefer_const_literals_to_create_immutables
                                      ),
                                    )),
                              ],
                            ),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)))),
                          ),
                        ),
                      ],
                    ),
                    // Row()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
