import 'package:flutter/material.dart';
import 'package:responsive/screens/desktop/create_desk.dart';
import 'package:responsive/screens/desktop/event_desk.dart';
import 'package:responsive/screens/desktop/home_desk.dart';
import 'package:side_navigation/side_navigation.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  List<Widget> views = const [
    HomeDesk(),
    EventDesk(),
    CreateDesk(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Row(
        children: [
          SideNavigationBar(
            selectedIndex: selectedIndex,
            footer: SideNavigationBarFooter(
              label: TextButton(
                onPressed: () {},
                child: const Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
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
            expandable: false,
          ),
          Expanded(
            child: views.elementAt(selectedIndex),
          ),
        ],
      ),
    );
  }
}
