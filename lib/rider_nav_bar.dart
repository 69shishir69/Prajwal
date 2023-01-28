import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ridehailing/multi_vehicle/add_multi_ride.dart';
import 'package:ridehailing/myMap.dart';
import 'package:ridehailing/rider_profile.dart';
import 'package:ridehailing/single_vehicle/add_single_ride.dart';

class RiderNavBar extends StatefulWidget {
  final int index;
  const RiderNavBar({Key? key, this.index = 1}) : super(key: key);

  @override
  _RiderNavBarState createState() => _RiderNavBarState();
}

class _RiderNavBarState extends State<RiderNavBar> {
  int increment = 0;
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    AddMultiRide(),
    AddSingleRide(),
    // ChooseCreateEventScreen(),
    // StaffChatPage(),
    MyMapScreen(),
    // ProfilePageScreen(),
    RiderProfile()
    // PastEventsScreen(),
    // Center(
    //   child: Text(
    //     'Account',
    //     style: optionStyle,
    //   ),
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    debugPrint(widget.index.toString());
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 20,
      //   title: const Text('GoogleNavBar'),
      // ),
      body: IndexedStack(
        index: increment == 0 ? widget.index : _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            // rippleColor: Colors.grey[300]!,
            // hoverColor: Colors.grey[100]!,
            gap: 8,
            // activeColor: Colors.black,
            // iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            // duration: const Duration(milliseconds: 400),
            tabBackgroundColor: Colors.grey[100]!,
            color: const Color.fromARGB(255, 174, 169, 169),
            tabs: const [
              GButton(
                key: ValueKey("index0"),
                iconActiveColor: Color.fromRGBO(11, 86, 222, 5),
                textColor: Color.fromRGBO(11, 86, 222, 5),
                icon: Icons.home,
                text: 'Multi Ride',
              ),
              // GButton(
              //   key: ValueKey("index1"),
              //   iconActiveColor: Color.fromRGBO(11, 86, 222, 5),
              //   textColor: Color.fromRGBO(11, 86, 222, 5),
              //   icon: Icons.schedule,
              //   text: 'Create',
              // ),
              GButton(
                key: ValueKey("index1"),
                iconActiveColor: Color.fromRGBO(11, 86, 222, 5),
                textColor: Color.fromRGBO(11, 86, 222, 5),
                icon: Icons.local_hospital,
                text: 'Single Ride',
              ),
              GButton(
                key: ValueKey("index2"),
                iconActiveColor: Color.fromRGBO(11, 86, 222, 5),
                textColor: Color.fromRGBO(11, 86, 222, 5),
                icon: Icons.map_outlined,
                text: 'Map',
              ),
              GButton(
                key: ValueKey("index3"),
                iconActiveColor: Color.fromRGBO(11, 86, 222, 5),
                textColor: Color.fromRGBO(11, 86, 222, 5),
                icon: Icons.settings_accessibility_outlined,
                text: 'Settings',
              ),
            ],
            selectedIndex: increment == 0 ? widget.index : _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
                increment = 1;
              });
            },
          ),
        ),
      ),
    );
  }
}