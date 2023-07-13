import 'package:http/http.dart';
import 'package:get_it/get_it.dart';
import 'package:storage_reader/features/product/data/product_datasource.dart';
import 'package:storage_reader/features/product/data/product_repositories.dart';
import 'package:storage_reader/features/product/presentation/cubit/product_cubit.dart';
import 'package:storage_reader/features/shop/data/shop_datasource.dart';
import 'package:storage_reader/features/shop/data/shop_repositories.dart';
import 'package:storage_reader/features/shop/presentation/cubit/shop_cubit.dart';

abstract class DI {
  static GetIt get di => GetIt.instance;

  static Future<void> init() async {
    di.registerLazySingleton<Client>(() => Client());
    registerProduct();
    registerShop();
  }

  static void registerProduct() async {
    di.registerLazySingleton<ProductDataSource>(
        () => ProductDataSource(di<Client>()));
    di.registerLazySingleton<ProductRepositories>(
        () => ProductRepositories(di<ProductDataSource>()));
    di.registerFactory<ProductCubit>(
        () => ProductCubit(di<ProductRepositories>()));
  }

  static void registerShop() async {
    di.registerLazySingleton<ShopDataSource>(
        () => ShopDataSource(di<Client>()));
    di.registerLazySingleton<ShopRepositories>(
        () => ShopRepositories(di<ShopDataSource>()));
    di.registerFactory<ShopCubit>(() => ShopCubit(di<ShopRepositories>()));
  }
}
