// ignore_for_file: prefer_const_constructors

import 'package:alliance/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

/// This is the main application widget.
class TransferScreen extends StatelessWidget {
  TransferScreen({Key? key}) : super(key: key);

  static const String _title = 'Transfer Screen';
  int money = 0;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: <Widget>[
            NavigationRail(
              selectedIndex: _selectedIndex,
              leading: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(Icons.person, color: Colors.black),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(5),
                    primary: Color(0xffFFC835),
                  ),
                ),
              ),
              backgroundColor: Color(0xff191A22),
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                  if (index == 0) {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    });
                  } else if (index == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TransferScreen()),
                    );
                  } else if (index == 2) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Program under construction')));
                  }
                });
              },
              labelType: NavigationRailLabelType.selected,
              destinations: const <NavigationRailDestination>[
                NavigationRailDestination(
                  icon: Icon(
                    Icons.holiday_village_outlined,
                    color: Color(0xffF5F8FB),
                  ),
                  selectedIcon: Icon(
                    Icons.holiday_village,
                    color: Color(0xffFFC835),
                  ),
                  label: Text(
                    'Dashboard',
                    style: TextStyle(color: Color(0xffFFC835), fontSize: 10),
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
                  padding: EdgeInsets.only(top: 5), //200
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
            // Main Content
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Container(
                          padding: EdgeInsets.only(bottom: 5, top: 15),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Money Transfer',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xff191A22),
                                fontFamily: 'Montserrat-SemiBold',
                                fontWeight: FontWeight.w600),
                          )),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            width: 310,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                  'Selected Card                                      ***1234'),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)))),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 20),
                          ),
                          Row(children: [
                            RichText(
                              text: TextSpan(
                                text: 'Receiver Details',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff191A22),
                                    fontFamily: 'Montserrat-SemiBold',
                                    fontWeight: FontWeight.w600),
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <TextSpan>[
                                  TextSpan(
                                    text:
                                        '\nPlease enter the correct details below ',
                                    style: TextStyle(
                                      color: Color(0xff191A22),
                                      fontSize: 14,
                                      fontFamily: 'Montserrat-Light',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ])
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 20),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Amount To Be Transferred',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )),
                      Container(
                          padding: EdgeInsets.only(top: 1),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Amount To Be Transferred',
                          )),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            width: 50.0,
                          ),
                          TextField(
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.0,
                            ),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(35))),
                            keyboardType: TextInputType.number,
                          )
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 20),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Receiver's Account Number",
                          )),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            width: 50.0,
                          ),
                          TextField(
                            maxLength: 12,
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.0,
                            ),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(35))),
                            keyboardType: TextInputType.number,
                          )
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 20),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Receiver's Account Name",
                          )),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            width: 50.0,
                          ),
                          TextField(
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.0,
                            ),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(35))),
                          )
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 20),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Note",
                          )),
                      Column(
                        children: [TextField()],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 80),
                          ),
                          Container(width: 60),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('<'),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)))),
                          ),
                          Container(width: 60),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('>'),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)))),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
