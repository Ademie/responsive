import 'package:flutter/material.dart';

class CreateMobile extends StatefulWidget {
  const CreateMobile({super.key});

  @override
  State<CreateMobile> createState() => _CreateMobileState();
}

class _CreateMobileState extends State<CreateMobile> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Text('Create Mobile'),
      ),
      
    );
  }
}
