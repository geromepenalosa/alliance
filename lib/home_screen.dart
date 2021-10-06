// ignore_for_file: prefer_const_constructors
<<<<<<< HEAD
import 'package:alliance/home_screen_transactions.dart';
import 'package:alliance/transfer_screen.dart';
=======

import 'package:alliance/transfer_screen.dart';
import 'package:flutter/gestures.dart';
>>>>>>> d559854fed21937c12ade930b629907bc1faac0e
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
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
                        style:
                            TextStyle(color: Color(0xffFFC835), fontSize: 10),
                      )),
                  NavigationRailDestination(
                    padding: EdgeInsets.only(top: 5),
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
              // This is the main content.
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'John Doe',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff191A22),
                                  fontWeight: FontWeight.w900),
                              // ignore: prefer_const_literals_to_create_immutables
                              children: <TextSpan>[
                                TextSpan(
                                  text: '\n@johndoe',
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
                            alignment: Alignment.topRight,
                            padding: EdgeInsets.only(top: 1),
                            width: 250,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.person,
                                color: Color(0xff191A22),
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xffF5F8FA)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                            ),
                          ),
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 20),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Your Card',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'Montserrat-SemiBold',
                                color: Color(0xff191A22)),
                          )),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10, bottom: 5),
                            width: 310,
                            height: 140,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(top: 15),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'XXXX XXXX XXXX 1234',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xff1473FB),
                                            fontFamily: 'Montserrat-SemiBold',
                                            fontWeight: FontWeight.w600),
                                      )),
                                  Container(
                                      padding: EdgeInsets.only(top: 60),
                                      alignment: Alignment.bottomRight,
                                      child: Text(
                                        '02/22',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xff1473FB),
                                            fontFamily: 'Montserrat-SemiBold',
                                            fontWeight: FontWeight.w600),
                                      ))
                                ],
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xffF5F8FA)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)))),
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
                                  width: 120,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Add Card +',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xff1473FB),
                                            fontFamily: 'Montserrat-SemiBold',
                                            fontWeight: FontWeight.w600),
                                      ),
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Color(0xffF5F8FA)),
                                          alignment: Alignment.centerLeft,
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          18))))),
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Deposit',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xff1473FB),
                                          fontFamily: 'Montserrat-SemiBold',
                                          fontWeight: FontWeight.w600),
                                    ),
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Color(0xffF5F8FA)),
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        15))))),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                TransferScreen()),
                                      );
                                    },
                                    child: Text(
                                      'Transfer',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xff1473FB),
                                          fontFamily: 'Montserrat-SemiBold',
                                          fontWeight: FontWeight.w600),
                                    ),
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Color(0xffF5F8FA)),
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        15))))),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Available Balance',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Montserrat-SemiBold',
                              color: Color(0xff191A22)),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            width: 310,
                            height: 130,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Column(
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Container(
                                      padding: EdgeInsets.only(top: 10),
                                      alignment: Alignment.centerLeft,
                                      child: RichText(
                                        text: TextSpan(
                                          text: '500,000',
                                          style: TextStyle(
                                              fontSize: 60,
                                              color: Color(0xff1473FB),
                                              fontFamily: 'Montserrat-SemiBold',
                                              fontWeight: FontWeight.w600),
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: <TextSpan>[
                                            TextSpan(
                                              text:
                                                  '\n   Estimated on all currencies',
                                              style: TextStyle(
                                                fontFamily: 'Montserrat-Light',
                                                color: Colors.black38,
                                                fontWeight: FontWeight.w300,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ],
                              ),
<<<<<<< HEAD
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xffF5F8FA)),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)))),
                            ),
=======
                              ElevatedButton(
                                  onPressed: null,
                                  child: Text('Deposit'),
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15))))),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              TransferScreen()),
                                    );
                                  },
                                  child: Text('Transfer'),
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15))))),
                            ],
>>>>>>> d559854fed21937c12ade930b629907bc1faac0e
                          )
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10, bottom: 5),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Recent Activity',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Montserrat-SemiBold',
                              color: Color(0xff191A22)),
                        ),
                      ),
                      SizedBox(
                          height: 154,
                          child: Card(
                            color: Color(0xFFF5F8FA),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: homeScreenTransaction.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Container(
                                      child: Card(
                                          color: Color(0xFFF5F8FA),
                                          child: Column(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(5),
                                                    child: Row(
                                                      children: [
                                                        ElevatedButton(
                                                          onPressed: () {},
                                                          child: Icon(
                                                              Icons.person,
                                                              color:
                                                                  Colors.white),
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            shape:
                                                                CircleBorder(),
                                                            padding:
                                                                EdgeInsets.all(
                                                                    8),
                                                            primary: Color(
                                                                0xff1473FB),
                                                          ),
                                                        ),
                                                        Column(
                                                          children: [
                                                            Text(
                                                              homeScreenTransaction[
                                                                      index]
                                                                  .name,
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                            Text(
                                                              homeScreenTransaction[
                                                                      index]
                                                                  .trasactionDate,
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                            Text(
                                                              homeScreenTransaction[
                                                                      index]
                                                                  .transactionType,
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          children: [
                                                            Text(homeScreenTransaction[
                                                                    index]
                                                                .transactionAmount
                                                                .toString())
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          )),
                                      // ignore: prefer_const_literals_to_create_immutables
                                    ),
                                  );
                                }),
                          ))
                    ],
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
