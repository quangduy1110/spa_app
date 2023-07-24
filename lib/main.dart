import 'package:app_spa/routes/app_pages.dart';
import 'package:app_spa/theme/themes.dart';
import 'package:app_spa/theme/themes_controller.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ThemesController themesController = Get.put(ThemesController());
    return GetMaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      title: 'Flutter Demo',
      initialRoute: AppPages.INITIAL,
      debugShowCheckedModeBanner: false,
      themeMode: themesController.getThemeMode(),
      theme: Themes.greenThemeData(),
      darkTheme: Themes.pinkThemeData(),
      getPages: AppPages.routes,
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
