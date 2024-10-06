import 'package:flutter/material.dart';
import 'package:learn/screens/countries/componets/country_view.dart';
import 'package:learn/widgets/app_text.dart';

import 'data/country_model.dart';

class CountriesScreen extends StatefulWidget {
  const CountriesScreen({super.key});

  @override
  State<CountriesScreen> createState() => _CountriesScreenState();
}

class _CountriesScreenState extends State<CountriesScreen> {
  List<CountryModel> countries = [
    CountryModel(
        name: 'Egypt',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Egypt.svg/800px-Flag_of_Egypt.svg.png'),
    CountryModel(
        name: 'Unites States',
        imageUrl:
            'https://cdn.britannica.com/79/4479-050-6EF87027/flag-Stars-and-Stripes-May-1-1795.jpg'),
    CountryModel(
        name: 'UK',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Flag_of_the_United_Kingdom_%281-2%29.svg/800px-Flag_of_the_United_Kingdom_%281-2%29.svg.png'),
    CountryModel(
        name: 'Saudi Arabia',
        imageUrl:
            'https://cdn.britannica.com/79/5779-050-46C999AF/Flag-Saudi-Arabia.jpg'),
    CountryModel(
        name: 'Qatar',
        imageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/Flag_of_Qatar_%283-2%29.svg/2560px-Flag_of_Qatar_%283-2%29.svg.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(
          text: 'Countries',
        ),
      ),
      body: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index) => CountryView(
          countryModel: countries[index],
        ),
      ),
    );
  }
}
