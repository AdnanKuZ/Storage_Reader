import 'package:dartz/dartz.dart';
import 'package:storage_reader/core/error/failures.dart';
import 'package:storage_reader/core/network/repositories.dart';
import 'package:storage_reader/features/shop/data/shop_datasource.dart';
import 'package:storage_reader/features/shop/data/shop_model.dart';

class ShopRepositories {
  ShopRepositories(this._shopDataSource);
  final ShopDataSource _shopDataSource;
  Future<Either<Failure, ShopModel>> getShop(int userId) async =>
      await repository(() => _shopDataSource.getShop(userId));
}
