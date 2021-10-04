// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

/// This is the main application widget.
class TransferScreen extends StatelessWidget {
  const TransferScreen({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

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
  int _selectedIndex = 0;
  bool _extended = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: <Widget>[
            NavigationRail(
              selectedIndex: _selectedIndex,
              leading: ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.person, color: Colors.black),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(5),
                  primary: Color(0xffFFC835),
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
            // Main Content
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Marc Pacaldo',
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff191A22)),
                              // ignore: prefer_const_literals_to_create_immutables
                              children: <TextSpan>[
                                TextSpan(
                                  text: '\n@marcpacaldo',
                                  style: TextStyle(
                                    color: Color(0xff191A22),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 1),
                            width: 200,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.only(left: 140),
                              child: ElevatedButton(
                                onPressed: null,
                                child: Icon(Icons.person),
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)))),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 10),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Money Transfer',
                          )),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            width: 310,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: null,
                              child: Text('Selected Card        ***1234'),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
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
                                    fontSize: 14, color: Color(0xff191A22)),
                                // ignore: prefer_const_literals_to_create_immutables
                                children: <TextSpan>[
                                  TextSpan(
                                    text:
                                        '\nPlease enter the correct details below: ',
                                    style: TextStyle(
                                      color: Color(0xff191A22),
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ])
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 10),
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
                              fontSize: 12,
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
                            "Receiver's Account Number",
                          )),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            width: 50.0,
                          ),
                          TextField(
                            autofocus: true,
                            style: TextStyle(
                              fontSize: 12,
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
                              fontSize: 12,
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
