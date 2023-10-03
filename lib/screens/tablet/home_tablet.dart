import 'package:flutter/material.dart';

class HomeTablet extends StatefulWidget {
  const HomeTablet({super.key});

  @override
  State<HomeTablet> createState() => _HomeTabletState();
}

class _HomeTabletState extends State<HomeTablet> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Text('Home Tablet'),
      ),
      
    );
  }
}
