import 'package:flutter/material.dart';
import 'package:learn/screens/cities/cities_screen.dart';
import 'package:learn/screens/countries/data/country_model.dart';
import 'package:learn/widgets/app_text.dart';

class CountryView extends StatelessWidget {
  final CountryModel countryModel;
  const CountryView({
    super.key,
    required this.countryModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CitiesScreen(
                countryModel: countryModel,
              ),
            ),
          );
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
          12.0,
        )),
        leading: Image.network(
          countryModel.imageUrl,
          width: 50,
          height: 50,
        ),
        title: AppText(text: countryModel.name),
        tileColor: Colors.grey.withOpacity(0.5),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
