import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';
import 'package:student_management_starter/app/constants/hive_table_constant.dart';
import 'package:student_management_starter/features/batch/presentation/data/model/batchHiveModel.dart';

final hiveServiceProvider = Provider((ref) => HiveService());

class HiveService {
  Future<void> init() async {
    var directory = await getApplicationDocumentsDirectory();
    Hive.init(directory.path);

    // Register the adapter
    Hive.registerAdapter(BatchhivemodelAdapter());
  }

  //============================Batch Queries============================
  Future<void> addBatch(Batchhivemodel batch) async {
    var box = await Hive.openBox<Batchhivemodel>('batch');
    await box.add(batch);
  }

  Future<List<Batchhivemodel>> getBatches() async {
    var box = await Hive.openBox<Batchhivemodel>(HiveTableConstant.batchBox);
    var  batches = box.values.toList();
    return batches;
  }
}
