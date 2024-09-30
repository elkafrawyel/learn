import 'package:flutter/material.dart';
import 'package:learn/screens/first_page/first_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => FirstPage(),
        ),
      );
    });
    return const Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Text(
          'Hello world',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
