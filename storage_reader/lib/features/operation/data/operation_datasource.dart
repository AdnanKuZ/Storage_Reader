import 'dart:convert';

import 'package:http/http.dart';
import 'package:storage_reader/app/di.dart';
import 'package:storage_reader/core/network/data_source.dart';
import 'package:storage_reader/core/network/urls.dart';
import 'package:storage_reader/features/operation/data/models/operation_model.dart';

class OperationDataSource {
  final Client _client;
  OperationDataSource(this._client);

  Future<OperationModel> getOperation(int operationId) async => dataSource(
      () => _client.get(
            Uri.parse(operationUrl(operationId)),
            headers: {
              'Accept': 'application/json',
              'Content-Type': 'application/json',
            },
          ),
      model: operationModelFromJson);

}
