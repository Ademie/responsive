import 'package:flutter/material.dart';

class CreateTablet extends StatefulWidget {
  const CreateTablet({super.key});

  @override
  State<CreateTablet> createState() => _CreateTabletState();
}

class _CreateTabletState extends State<CreateTablet> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Text('Create Tablet'),
      ),
      
    );
  }
}
