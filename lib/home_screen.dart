/// Flutter code sample for NavigationRail

// This example shows a [NavigationRail] used within a Scaffold with 3
// [NavigationRailDestination]s. The main content is separated by a divider
// (although elevation on the navigation rail can be used instead). The
// `_selectedIndex` is updated by the `onDestinationSelected` callback.

import 'package:flutter/material.dart';

/// This is the main application widget.
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Scaffold(
        body: Row(
          children: <Widget>[
            NavigationRail(
              backgroundColor: Color(0xff191A22),
              selectedIndex: _selectedIndex,
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
                    style: TextStyle(color: Color(0xffFFC835)),
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
                      style: TextStyle(color: Color(0xffFFC835)),
                    )),
                NavigationRailDestination(
                  icon: Padding(
                    padding: EdgeInsets.only(top: 400),
                    child:
                        Icon(Icons.settings_outlined, color: Color(0xffF5F8FA)),
                  ),
                  selectedIcon: Padding(
                    padding: EdgeInsets.only(top: 400),
                    child: Icon(
                      Icons.settings,
                      color: Color(0xffFFC835),
                    ),
                  ),
                  label: Text('Settings',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0xffFFC835))),
                ),
              ],
            ),
            const VerticalDivider(thickness: 1, width: 1),
            // This is the main content.
            Expanded(
              child: Center(
                child: Text('selectedIndex: $_selectedIndex'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
