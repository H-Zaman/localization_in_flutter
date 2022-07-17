import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translations/localization/translation_keys.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Translate.hi.tr,
              style: const TextStyle(
                fontSize: 24
              ),
            ),
            Text(
              Translate.myNameIsVal.trParams({
                'val' : 'Hasib'
              }),
              style: const TextStyle(
                fontSize: 32
              ),
            )
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: (){
          final currentLocale = Get.locale!;
          if(currentLocale == Translate.localeEn){
            Get.updateLocale(Translate.localeKr);
          }else{
            Get.updateLocale(Translate.localeEn);
          }
        },
        child: const Text(
          'Switch Locale'
        ),
      ),
    );
  }
}
