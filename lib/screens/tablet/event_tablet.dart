import 'package:flutter/material.dart';

class EventTablet extends StatefulWidget {
  const EventTablet({super.key});

  @override
  State<EventTablet> createState() => _EventTabletState();
}

class _EventTabletState extends State<EventTablet> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Text('Event'),
      ),
      
    );
  }
}
