import 'package:flutter/material.dart';

import '../../widgets/app_button.dart';
import '../../widgets/app_text_button.dart';
import '../second_page/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hager',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Salah',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          AppButton(
            text: 'تسجيل الدخول',
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SecondPage(
                    number: 100,
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          const AppTextButton(
            text: 'نسيت كلمة المرور؟',
            color: Color(0xffC56D1C),
          ),
        ],
      ),
    );
  }
}
