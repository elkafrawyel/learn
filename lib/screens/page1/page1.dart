import 'package:flutter/material.dart';
import 'package:learn/screens/page1/data/person_model.dart';
import 'package:learn/widgets/app_text.dart';

class Page1 extends StatelessWidget {
  Page1({super.key});

  PersonModel person1 = PersonModel(
    personName: 'Hager Salah',
    personPhone: '24244242',
    personImage:
        'https://parade.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTkwNTc1OTI2MjAxOTUyMTI0/unique-baby-names-2019-jpg.jpg',
    bgColor: Colors.green,
  );

  List<PersonModel> personList = [
    PersonModel(
      personName: 'Hager Salah',
      personImage:
          'https://static.vecteezy.com/system/resources/thumbnails/024/296/148/small_2x/cute-white-baby-looking-out-of-a-bed-sheet-on-a-bed-photo.jpg',
      personPhone: '24244242',
      bgColor: Colors.green,
    ),
    PersonModel(
      personName: 'Mahmoud',
      personPhone: '22222222',
      personImage:
          'https://todaysparent.mblycdn.com/tp/resized/2014/12/1600x1200/blanket-baby-thumb.jpg',
      bgColor: Colors.blue,
    ),
    PersonModel(
      personName: 'Ali',
      personPhone: '22222222',
      personImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9dWH_3ItX-leWyPuMxg_BfORY7G9nGBbf4A&s',
      bgColor: Colors.amber,
    ),
    PersonModel(
      personName: 'Mostafa',
      personPhone: '897878768',
      personImage:
          'https://parade.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTkwNTc1OTI2MjAxOTUyMTI0/unique-baby-names-2019-jpg.jpg',
      bgColor: Colors.cyan,
    ),
    PersonModel(
      personName: 'yazan',
      personPhone: '9255779',
      personImage:
          'https://parade.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTkwNTc1OTI2MjAxOTUyMTI0/unique-baby-names-2019-jpg.jpg',
      bgColor: Colors.purple,
    ),
    PersonModel(
      personName: 'karan',
      personPhone: '244556878',
      personImage:
          'https://parade.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTkwNTc1OTI2MjAxOTUyMTI0/unique-baby-names-2019-jpg.jpg',
      bgColor: Colors.redAccent,
    ),
    PersonModel(
      personName: 'ayman',
      personPhone: '123456',
      personImage:
          'https://parade.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTkwNTc1OTI2MjAxOTUyMTI0/unique-baby-names-2019-jpg.jpg',
      bgColor: Colors.orange,
    ),
    PersonModel(
      personName: 'sarah',
      personPhone: '7654321',
      personImage:
          'https://parade.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTkwNTc1OTI2MjAxOTUyMTI0/unique-baby-names-2019-jpg.jpg',
      bgColor: Colors.indigo,
    ),
    PersonModel(
      personName: 'ranim',
      personPhone: '9874321',
      personImage:
          'https://parade.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTkwNTc1OTI2MjAxOTUyMTI0/unique-baby-names-2019-jpg.jpg',
      bgColor: Colors.pink,
    ),
    PersonModel(
      personName: 'miral',
      personPhone: '34567889',
      personImage:
          'https://parade.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTkwNTc1OTI2MjAxOTUyMTI0/unique-baby-names-2019-jpg.jpg',
      bgColor: Colors.teal,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText(text: 'Page1'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: personList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: personList[index].bgColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                leading: Image.network(
                  personList[index].personImage,
                  width: 70,
                  height: 70,
                ),
                title: AppText(
                  text: personList[index].personName,
                  textColor: Colors.white,
                ),
                subtitle: AppText(
                  text: personList[index].personPhone,
                  textColor: Colors.white,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
