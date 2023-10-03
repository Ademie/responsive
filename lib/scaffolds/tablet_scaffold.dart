import 'package:flutter/material.dart';
import 'package:responsive/screens/tablet/event_tablet.dart';
import 'package:responsive/screens/tablet/home_tablet.dart';
import 'package:side_navigation/side_navigation.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  List<Widget> views = const [
    HomeTablet(),
    EventTablet(),
    Center(
      child: Text('Settings'),
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Row(
        children: [
          SideNavigationBar(
            selectedIndex: selectedIndex,
            footer: SideNavigationBarFooter(
                label: TextButton(
                    onPressed: () {},
                    child: const Text('Logout',
                        style: TextStyle(
                          color: Colors.white,
                        )))),
            items: const [
              SideNavigationBarItem(
                icon: Icons.dashboard,
                label: 'Dashboard',
              ),
              SideNavigationBarItem(
                icon: Icons.person,
                label: 'Account',
              ),
              SideNavigationBarItem(
                icon: Icons.settings,
                label: 'Settings',
              ),
            ],
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
          Expanded(
            child: views.elementAt(selectedIndex),
          ),
        ],
      ),
    );
  }
}
