import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

/// Main page of the app
class HomePage extends StatefulWidget {
  /// Keys
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// Random variable for picking colors
  final Random _random = Random();

  /// The first background color on the screen
  Color _color = Colors.blueAccent;

  /// Variable for blurring AppBar
  final double _appBarBlurFilterX = 5;

  /// Variable for blurring AppBar
  final double _appBarBlurFilterY = 5;

  /// Text size of the message in the middle
  final double _messageTextSize = 30;

  /// Text size of the AppBar title
  final double _tittleTextSize = 22;

  /// Text on the AppBar
  final String _titleText = "Solid";

  /// Text in the middle of the screen
  final String _messageText = "Hey There";

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(
        home: GestureDetector(
          onTap: onTapAnywhere,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: _color,
              flexibleSpace: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: _appBarBlurFilterX,
                    sigmaY: _appBarBlurFilterY,
                  ),
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
              ),
              title: Text(
                _titleText,
                style: TextStyle(
                  fontFamily: "Inter",
                  fontSize: _tittleTextSize,
                ),
              ),
              centerTitle: true,
            ),
            extendBodyBehindAppBar: true,
            body: Container(
              color: _color,
              child: Center(
                child: Text(
                  _messageText,
                  style: TextStyle(
                    fontSize: _messageTextSize,
                    fontFamily: "Inter",
                    color: Colors.white,
                  ),
                ),
              ), //padding: const EdgeInsets.all(20),
            ),
          ),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: _color,
      flexibleSpace: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: _appBarBlurFilterX,
            sigmaY: _appBarBlurFilterY,
          ),
          child: Container(
            color: Colors.transparent,
          ),
        ),
      ),
    );
  }

  Text appBarTitle() {
    return Text(
      _titleText,
      style: TextStyle(
        fontFamily: "Inter",
        fontSize: _tittleTextSize,
      ),
    );
  }

  Text message() {
    return Text(
      _messageText,
      style: TextStyle(
        fontSize: _messageTextSize,
        fontFamily: "Inter",
        color: Colors.white,
      ),
    );
  }

  void onTapAnywhere() {
    {
      setState(
        () {
          _color = changeColor();
        },
      );
    }
  }

  Color changeColor() {
    final Color _color = Color.fromRGBO(
      _random.nextInt(255),
      _random.nextInt(255),
      _random.nextInt(255),
      1,
    );

    return _color;
  }
}
