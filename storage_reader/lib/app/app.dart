import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:storage_reader/app/di.dart';
import 'package:storage_reader/features/home/home_page.dart';

class StorageGuardApp extends StatelessWidget {
  static Future<void> init() async {
    //splash screen
    FlutterNativeSplash.preserve(
        widgetsBinding: WidgetsFlutterBinding.ensureInitialized());
    await DI.init();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    Future.delayed(
      const Duration(milliseconds: 500),
      () => FlutterNativeSplash.remove(),
    );
  }

  const StorageGuardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage());
  }
}
