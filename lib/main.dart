import 'package:flutter/material.dart';
import 'package:responsive/responsive/responsive_layout.dart';
import 'package:responsive/scaffolds/desktop_scaffold.dart';
import 'package:responsive/scaffolds/mobile_scaffold.dart';
import 'package:responsive/scaffolds/tablet_scaffold.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: ResponsiveLayout(
      mobileScaffold: MobileScaffold(),
      tabletScaffold: TabletScaffold(),
      desktopScaffold: DesktopScaffold(),
    ));
  }
}
