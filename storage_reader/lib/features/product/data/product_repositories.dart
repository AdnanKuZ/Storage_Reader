import 'package:dartz/dartz.dart';
import 'package:storage_reader/core/error/failures.dart';
import 'package:storage_reader/core/network/repositories.dart';
import 'package:storage_reader/features/product/data/product_datasource.dart';
import 'package:storage_reader/features/product/data/product_model.dart';

class ProductRepositories {
  ProductRepositories(this._productDataSource);
  final ProductDataSource _productDataSource;
  Future<Either<Failure, ProductModel>> getProduct(int productId) async =>
      await repository(() => _productDataSource.getProduct(productId));
}
