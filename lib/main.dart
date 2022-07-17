import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translations/localization/local_translate.dart';
import 'package:translations/myHomePage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await AllTranslations.initTranslation();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Localization with GetX',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      /// add a default locale
      locale: const Locale('en', 'US'),
      /// create translation class which has all the locale and its
      /// translations map
      translations: AllTranslations(),
      home: const MyHomePage(),
    );
  }
}
