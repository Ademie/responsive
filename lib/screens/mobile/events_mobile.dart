import 'package:flutter/material.dart';

class EventMobile extends StatefulWidget {
  const EventMobile({super.key});

  @override
  State<EventMobile> createState() => _EventMobileState();
}

class _EventMobileState extends State<EventMobile> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Text('Event Mobile'),
      ),
      
    );
  }
}
