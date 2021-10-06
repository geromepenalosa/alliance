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
        child: Container(
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
                        MaterialPageRoute(
                            builder: (context) => TransferScreen()),
                      );
                    } else if (index == 2) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Program under construction')));
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
                        style:
                            TextStyle(color: Color(0xffFFC835), fontSize: 10),
                      )),
                  NavigationRailDestination(
                    icon:
                        Icon(Icons.settings_outlined, color: Color(0xffF5F8FA)),
                    selectedIcon: Icon(
                      Icons.settings,
                      color: Color(0xffFFC835),
                    ),
                    label: Text('Account\nSettings',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(color: Color(0xffFFC835), fontSize: 10)),
                  ),
                ],
              ),
              const VerticalDivider(thickness: 1, width: 4),
              // Main Content
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Money Transfer',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff191A22),
                                  fontFamily: 'Montserrat-SemiBold',
                                  fontWeight: FontWeight.w600),
                            )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 30,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 290,
                              height: 70,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'Selected Card                       ***1234',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Montserrat-Bold',
                                      fontWeight: FontWeight.w800),
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
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 30,
                        ),
                        Column(
                          children: [
                            Container(),
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
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 30,
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Amount To Be Transferred',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff1473FB)),
                            )),
                        Container(
                            padding: EdgeInsets.only(top: 1),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Current Balance: 12000',
                              style: TextStyle(
                                  color: Color(0xff1473FB), fontSize: 12),
                            )),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              width: 50.0,
                            ),
                            TextField(
                              style: TextStyle(
                                fontFamily: 'Montserrat-Regular',
                                fontSize: 15,
                                height: 1.0,
                              ),
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15))),
                              keyboardType: TextInputType.number,
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 50,
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Receiver's Account Number",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff1473FB)),
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
                                      borderRadius: BorderRadius.circular(15))),
                              keyboardType: TextInputType.number,
                            )
                          ],
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Receiver's Account Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff1473FB)),
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
                                      borderRadius: BorderRadius.circular(15))),
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 50,
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Note: ",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff1473FB)),
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
                                      borderRadius: BorderRadius.circular(15))),
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 50,
                        ),
                        Row(
                          children: [
                            Container(width: 60),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(
                                  context,
                                );
                              },
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
      ),
    );
  }
}
