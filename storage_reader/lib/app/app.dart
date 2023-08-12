import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:storage_reader/app/di.dart';
import 'package:storage_reader/features/home/home_page.dart';
import 'package:storage_reader/features/operation/presentation/cubit/get_operation_cubit.dart';
import 'package:storage_reader/features/product/presentation/cubit/product_cubit.dart';
import 'package:storage_reader/features/shop/presentation/cubit/shop_cubit.dart';
import 'package:intl/date_symbol_data_local.dart';

class StorageGuardApp extends StatelessWidget {
  static Future<void> init() async {
    //splash screen
    FlutterNativeSplash.preserve(
        widgetsBinding: WidgetsFlutterBinding.ensureInitialized());
    await initLocalization();

    await DI.init();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    Future.delayed(
      const Duration(milliseconds: 500),
      () => FlutterNativeSplash.remove(),
    );
  }

  static Future<void> initLocalization() async {
    WidgetsFlutterBinding.ensureInitialized();
    // await EasyLocalization.ensureInitialized();
    initializeDateFormatting();
  }

  const StorageGuardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => DI.di<ProductCubit>()),
        BlocProvider(create: (_) => DI.di<ShopCubit>()),
        BlocProvider(create: (_) => DI.di<GetOperationCubit>()),
      ],
      child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const HomePage()),
    );
  }
}
