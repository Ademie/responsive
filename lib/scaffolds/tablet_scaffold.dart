import 'package:flutter/material.dart';
import 'package:responsive/screens/tablet/create_tablet.dart';
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
    CreateTablet()
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
                icon: Icons.home,
                label: 'Home',
              ),
              SideNavigationBarItem(
                icon: Icons.calendar_month,
                label: 'Events',
              ),
              SideNavigationBarItem(
                icon: Icons.circle_outlined,
                label: 'Create',
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
