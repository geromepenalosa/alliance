// ignore_for_file: prefer_const_constructors
import 'dart:math';
import 'package:alliance/account_data.dart';
import 'package:alliance/home_screen.dart';
import 'package:alliance/transfer_screen.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  final transactionAmount;
  final transactionAccountNumber;
  final transcationReceiver;
  final transactionNote;

  SuccessScreen({
    Key? key,
    @required this.transactionAmount,
    this.transactionAccountNumber,
    this.transcationReceiver,
    this.transactionNote,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var amountOfTransaction = double.parse(transactionAmount);
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: <Widget>[
            NavigationRail(
              selectedIndex: 1,
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
              onDestinationSelected: (int index) {},
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 310,
                          height: 360,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Container(
                                    alignment: Alignment.centerLeft,
                                    child: RichText(
                                        text: TextSpan(
                                      text: 'Transfer Details',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff191A22),
                                        fontWeight: FontWeight.w700,
                                      ),
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
                                SizedBox(
                                    height: MediaQuery.of(context).size.height /
                                        80),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Amount Transferred",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff1473fb),
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(transactionAmount,
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xff191A22),
                                                fontWeight: FontWeight.w700)),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Receiver's Account\nNumber",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff1473fb),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(transactionAccountNumber,
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff191A22),
                                            fontWeight: FontWeight.w700)),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Receiver's Account\nName",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff1473fb),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(transcationReceiver,
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff191A22),
                                            fontWeight: FontWeight.w700)),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Note",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff1473fb),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(transactionNote,
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff191A22),
                                            fontWeight: FontWeight.w700)),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Transaction\nNumber",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff1473fb),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(value.toString(),
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff191A22),
                                            fontWeight: FontWeight.w700)),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Transaction\nDate",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff1473fb),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(transactionDate.toString(),
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff191A22),
                                            fontWeight: FontWeight.w700)),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Balance",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff1473fb),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width /
                                          10,
                                    ),
                                    Text(
                                        (account.accountOwnerBalance)
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff191A22),
                                            fontWeight: FontWeight.w700)),
                                  ],
                                ),
                              ],
                            ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xffF5F8FA)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)))),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                text: 'Payment Method - Savings',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xff191A22),
                                    fontWeight: FontWeight.w700),
                                // ignore: prefer_const_literals_to_create_immutables
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 3.5,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 80,
                    ),

                    Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.33,
                          height: 100,
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
                                          fontSize: 10,
                                          color: Color(0xff1473FB),
                                          fontFamily: 'Montserrat-SemiBold',
                                          fontWeight: FontWeight.w600),
                                    )),
                                Container(
                                    padding: EdgeInsets.only(top: 50),
                                    alignment: Alignment.bottomRight,
                                    child: Text(
                                      '02/22',
                                      style: TextStyle(
                                          fontSize: 12,
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
                      height: MediaQuery.of(context).size.height / 80,
                    ),

                    Row(
                      children: [
                        Container(
                          width: 310,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeScreen()));
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Container(
                                    child: RichText(
                                  text: TextSpan(
                                    text: '>',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
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
