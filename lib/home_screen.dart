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
                            text: 'Gerome Penalosa',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff191A22),
                                fontWeight: FontWeight.w900),
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <TextSpan>[
                              TextSpan(
                                text: '\n@geromepenalosa',
                                style: TextStyle(
                                  color: Color(0xff191A22),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
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
                        padding: EdgeInsets.only(top: 20),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Your Card',
                        )),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          width: 310,
                          height: 150,
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
                                    padding: EdgeInsets.only(top: 70),
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
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Column(
                        children: [
                          // ignore: prefer_const_literals_to_create_immutables
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 140,
                                child: ElevatedButton(
                                    onPressed: null,
                                    child: Text('Add Card +'),
                                    style: ButtonStyle(
                                        alignment: Alignment.centerLeft,
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        15))))),
                              ),
                              ElevatedButton(
                                  onPressed: null,
                                  child: Text('Deposit'),
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15))))),
                              ElevatedButton(
                                  onPressed: null,
                                  child: Text('Transfer'),
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15))))),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Available Balance',
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          width: 310,
                          height: 150,
                          child: ElevatedButton(
                            onPressed: null,
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Container(
                                    padding: EdgeInsets.only(top: 15),
                                    alignment: Alignment.centerLeft,
                                    child: RichText(
                                      text: TextSpan(
                                        text: '12,000',
                                        style: TextStyle(
                                            fontSize: 64,
                                            color: Colors.black26),
                                        // ignore: prefer_const_literals_to_create_immutables
                                        children: <TextSpan>[
                                          TextSpan(
                                            text:
                                                '\n     Estimated on all currencies',
                                            style: TextStyle(
                                              color: Colors.black26,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
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
