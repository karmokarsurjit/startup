import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FlutterLogo(
        textColor: Color(0xFF757575),
    style: FlutterLogoStyle.markOnly,
    duration: Duration(milliseconds: 750),
    curve: Curves.fastOutSlowIn,
    );
  }
}

