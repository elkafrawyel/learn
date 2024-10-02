import 'package:flutter/material.dart';

import '../widgets/app_button.dart';
import 'page1/page1.dart';
import 'page2/page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButton(
              text: 'Page 1',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Page1(),
                  ),
                );
              },
            ),
            AppButton(
              text: 'Page 2',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Page2(
                      number: 1,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
