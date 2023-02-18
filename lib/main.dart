import 'package:andrea_project_mobile/bindings/app_bindings.dart';
import 'package:andrea_project_mobile/routes/app_routes.dart';
import 'package:andrea_project_mobile/translation/app_translation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Andrea_Project',
      translations: AppTranslation(),
      locale: Get.locale,
      fallbackLocale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      getPages: appRoutes(),
      initialRoute: '/login',
      initialBinding: AuthBinding(),
      theme: ThemeData(
        visualDensity: VisualDensity.standard,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
