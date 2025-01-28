import 'package:flutter/material.dart';
import 'package:test1/common/component/custom_text_form_field.dart';
import 'package:test1/common/view/splash_screen.dart';

void main() {
  runApp(createApp());
}

Widget createApp() => const _App();

class _App extends StatelessWidget {
  const _App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'NotoSans',
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
