import 'package:flutter/material.dart';
import 'package:color_changer/pages/home_page.dart';

void main() {
  runApp(const SolidApp());
}

/// Entrance to the apppppp
class SolidApp extends StatelessWidget {
  /// Keysss
  const SolidApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
