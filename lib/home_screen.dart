// ignore_for_file: prefer_const_constructors

import 'package:alliance/account_data.dart';

import 'package:alliance/success_screen.dart';
import 'package:alliance/transactions.dart';
import 'package:alliance/transfer_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

/// This is the main application widget.
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
                  child: Container(
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height,
                      maxWidth: MediaQuery.of(context).size.width,
                    ),
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
                              constraints: BoxConstraints(
                                maxHeight: MediaQuery.of(context).size.height,
                                maxWidth:
                                    MediaQuery.of(context).size.width / 1.66,
                              ),
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
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 60,
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Your Card',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Montserrat-SemiBold',
                                  color: Color(0xff191A22)),
                            )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 90,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 1.33,
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
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 130,
                        ),
                        Column(
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
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 90,
                        ),
                        Container(
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
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 150,
                        ),
                        Row(
                          children: [
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 1.34,
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
                                              text: account.accountOwnerBalance
                                                  .toString(),
                                              style: TextStyle(
                                                  fontSize: 60,
                                                  color: Color(0xff1473FB),
                                                  fontFamily:
                                                      'Montserrat-SemiBold',
                                                  fontWeight: FontWeight.w600),
                                              // ignore: prefer_const_literals_to_create_immutables
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text:
                                                      '\n   Estimated on all currencies',
                                                  style: TextStyle(
                                                    fontFamily:
                                                        'Montserrat-Light',
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
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color(0xffF5F8FA)),
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)))),
                                ))
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 90,
                        ),
                        Container(
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
                          height: MediaQuery.of(context).size.height / 180,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 4.5,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            color: Color(0xFFF5F8FA),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: userTransactions.isEmpty
                                ? Center(
                                    child: Text(
                                    'No Transactions',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 25,
                                      color: Color(0xff1473FB),
                                    ),
                                  ))
                                : ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    itemCount: userTransactions.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Center(
                                          child: Container(
                                            child: Card(
                                                color: Color(0xFFF5F8FA),
                                                child: Column(
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(5),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              ElevatedButton(
                                                                onPressed:
                                                                    () {},
                                                                child: Icon(
                                                                    Icons
                                                                        .person,
                                                                    color: Colors
                                                                        .white),
                                                                style: ElevatedButton
                                                                    .styleFrom(
                                                                  shape:
                                                                      CircleBorder(),
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              4),
                                                                  primary: Color(
                                                                      0xff1473FB),
                                                                ),
                                                              ),
                                                              Column(
                                                                children: [
                                                                  Text(
                                                                    userTransactions[
                                                                            index]
                                                                        .name,
                                                                    style: TextStyle(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        color: Colors
                                                                            .black),
                                                                  ),
                                                                  Text(
                                                                    userTransactions[
                                                                            index]
                                                                        .transactionDate,
                                                                    style: TextStyle(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .black),
                                                                  ),
                                                                  Text(
                                                                    userTransactions[
                                                                            index]
                                                                        .transactionType,
                                                                    style: TextStyle(
                                                                        fontFamily:
                                                                            'Montserrat',
                                                                        fontSize:
                                                                            12,
                                                                        color: Colors
                                                                            .black),
                                                                  ),
                                                                ],
                                                              ),
                                                              Row(
                                                                children: [
                                                                  SizedBox(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width /
                                                                        9,
                                                                  ),
                                                                  Text(userTransactions[
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
                                        ),
                                      );
                                    }),
                          ),
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
