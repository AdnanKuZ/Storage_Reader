import 'package:dartz/dartz.dart';
import 'package:storage_reader/core/error/failures.dart';
import 'package:storage_reader/core/network/repositories.dart';
import 'package:storage_reader/features/operation/data/operation_datasource.dart';
import 'package:storage_reader/features/operation/data/models/operation_model.dart';

class OperationRepositories {
  final OperationDataSource _operationDataSource;
  OperationRepositories(this._operationDataSource);

  Future<Either<Failure, OperationModel>> getOperation(int operationId) async =>
      await repository(
          () async => await _operationDataSource.getOperation(operationId));
}
