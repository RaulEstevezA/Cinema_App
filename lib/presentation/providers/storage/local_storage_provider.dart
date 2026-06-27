import 'package:cinema_app/infrastructure/datasources/drift_datasource.dart';
import 'package:cinema_app/infrastructure/repositories/local_storage_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final localStorageRepositoryProvider = Provider((ref) {
  return LocalStorageRepositoryImp(DriftDatasource());
});
