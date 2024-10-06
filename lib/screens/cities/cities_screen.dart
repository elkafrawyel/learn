import 'package:flutter/material.dart';
import 'package:learn/screens/countries/data/country_model.dart';
import 'package:learn/widgets/app_text.dart';

class CitiesScreen extends StatefulWidget {
  final CountryModel countryModel;
  const CitiesScreen({
    super.key,
    required this.countryModel,
  });

  @override
  State<CitiesScreen> createState() => _CitiesScreenState();
}

class _CitiesScreenState extends State<CitiesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(text: widget.countryModel.name),
      ),
    );
  }
}
