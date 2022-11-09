import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'env/app_config.dart';
import 'm3u8_home.dart';

void main() {
  const environment = bool.hasEnvironment('ENVIRONMENT')
      ? String.fromEnvironment('ENVIRONMENT')
      : AppConfig.ENV_DEV;

  AppConfig().initConfig(environment);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(2556, 1179),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, widget) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const M3u8HomePage(),
          );
        });
  }
}
