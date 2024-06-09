import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_management_starter/core/networking/local/hive_service.dart';
import 'package:student_management_starter/features/batch/presentation/data/model/batchHiveModel.dart';

//Create a provider for the BatchLocalDataSource
final batchLocalDataSourceProvider = Provider(
  (ref) => BatchLocalDataSource(
    hiveService: ref.read(hiveServiceProvider),
    batchHiveModel: ref.read(batchhivemodelProvider),
  ),
);

class BatchLocalDataSource {
  final HiveService hiveService;
  final Batchhivemodel batchHiveModel;

  BatchLocalDataSource({
    required this.hiveService,
    required this.batchHiveModel,
  });
}
