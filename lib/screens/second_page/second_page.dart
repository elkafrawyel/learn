import 'package:flutter/material.dart';
import 'package:learn/widgets/app_button.dart';
import 'package:learn/widgets/app_text.dart';

class SecondPage extends StatefulWidget {
  final int number;
  const SecondPage({
    super.key,
    required this.number,
  });

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late int number;

  pluse() {
    setState(() {
      number = number + 1;
    });
  }

  minuse() {
    setState(() {
      number = number - 1;
    });
  }

  @override
  initState() {
    super.initState();
    number = widget.number;
  }

  @override
  Widget build(BuildContext context) {
    Color newColor = Colors.amber;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Text(
                  // number.toString(),
                  '$number counter',
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppButton(
                    text: '+',
                    onPressed: pluse,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  AppButton(
                    text: '-',
                    onPressed: minuse,
                  ),
                ],
              ),
              Row(
                children: [
                  const AppText(text: '1'),
                  AppText(
                    text: '*',
                    textColor: newColor,
                  ),
                  const AppText(text: '1'),
                  AppText(
                    text: '=',
                    textColor: newColor,
                  ),
                  const AppText(text: '1'),
                ],
              ),
              Row(
                children: [
                  const AppText(
                    text: '1',
                  ),
                  AppText(
                    text: '*',
                    textColor: newColor,
                  ),
                  const AppText(
                    text: '2',
                  ),
                  AppText(
                    text: '=',
                    textColor: newColor,
                  ),
                  const AppText(
                    text: '2',
                  ),
                ],
              ),
              Row(
                children: [
                  const AppText(
                    text: '1',
                  ),
                  AppText(
                    text: '*',
                    textColor: newColor,
                  ),
                  const AppText(
                    text: '3',
                  ),
                  AppText(
                    text: '=',
                    textColor: newColor,
                  ),
                  const AppText(
                    text: '3',
                  ),
                ],
              ),
              Row(
                children: [
                  const AppText(
                    text: '1',
                  ),
                  AppText(
                    text: '*',
                    textColor: newColor,
                  ),
                  const AppText(
                    text: '4',
                  ),
                  AppText(
                    text: '=',
                    textColor: newColor,
                  ),
                  const AppText(
                    text: '4',
                  ),
                ],
              ),
              Row(
                children: [
                  const AppText(
                    text: '1',
                  ),
                  AppText(
                    text: '*',
                    textColor: newColor,
                  ),
                  const AppText(
                    text: '5',
                  ),
                  AppText(
                    text: '=',
                    textColor: newColor,
                  ),
                  const AppText(
                    text: '5',
                  ),
                ],
              ),
              Row(
                children: [
                  const AppText(
                    text: '1',
                  ),
                  AppText(
                    text: '*',
                    textColor: newColor,
                  ),
                  const AppText(
                    text: '6',
                  ),
                  AppText(
                    text: '=',
                    textColor: newColor,
                  ),
                  const AppText(
                    text: '6',
                  ),
                ],
              ),
              Row(
                children: [
                  const AppText(
                    text: '1',
                  ),
                  AppText(
                    text: '*',
                    textColor: newColor,
                  ),
                  const AppText(
                    text: '7',
                  ),
                  AppText(
                    text: '=',
                    textColor: newColor,
                  ),
                  const AppText(
                    text: '7',
                  ),
                ],
              ),
              Row(
                children: [
                  const AppText(
                    text: '1',
                  ),
                  AppText(
                    text: '*',
                    textColor: newColor,
                  ),
                  const AppText(
                    text: '8',
                  ),
                  AppText(
                    text: '=',
                    textColor: newColor,
                  ),
                  const AppText(
                    text: '8',
                  ),
                ],
              ),
              Row(
                children: [
                  const AppText(
                    text: '1',
                  ),
                  AppText(
                    text: '*',
                    textColor: newColor,
                  ),
                  const AppText(
                    text: '9',
                  ),
                  AppText(
                    text: '=',
                    textColor: newColor,
                  ),
                  const AppText(
                    text: '9',
                  ),
                ],
              ),
              Row(
                children: [
                  AppText(
                    text: '1',
                    fontSize: 30,
                  ),
                  AppText(
                    text: '*',
                    textColor: newColor,
                  ),
                  AppText(
                    text: '10',
                    fontSize: 30,
                  ),
                  AppText(
                    text: '=',
                    textColor: newColor,
                  ),
                  AppText(
                    text: '10',
                    fontSize: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
