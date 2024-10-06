import 'package:flutter/material.dart';
import 'package:learn/screens/home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    });
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Image.network(
          'https://www.cdn.justshowbiz.net/wp-content/uploads/2020/01/dheeraj-dhoopar.jpg?strip=all&lossy=1&ssl=1',
          height: 200,
          width: 200,
        ),
      ),
    );
  }
}
