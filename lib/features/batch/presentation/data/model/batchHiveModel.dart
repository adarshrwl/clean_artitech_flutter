import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:student_management_starter/app/constants/hive_table_constant.dart';
import 'package:student_management_starter/features/batch/presentation/domain/entity/batch_entity.dart';
import 'package:uuid/uuid.dart';

part 'batchHiveModel.g.dart';

//dart run build_runner build -d
//you can use this command to generate the g.dart file which is auto generated
final batchhivemodelProvider = Provider((ref) => Batchhivemodel.empty());
//Provider for the batch model

@HiveType(typeId: HiveTableConstant.batchTableId)
class Batchhivemodel {
  @HiveField(0)
  final String? batchId;
  @HiveField(1)
  final String batchName;

  Batchhivemodel({
    String? batchId,
    required this.batchName,
  }) : batchId = batchId ?? const Uuid().v4();

  //This is for the auto generation of the id for the batch
  Batchhivemodel.empty()
      : batchId = "",
        batchName = "";

  // Convert Hive object to entity
  BatchEntity toEntity() => BatchEntity(
        batchId: batchId ?? '',
        batchName: batchName,
      );

  // Convert entity to Hive object
  factory Batchhivemodel.fromEntity(BatchEntity entity) => Batchhivemodel(
        batchId: entity.batchId,
        batchName: entity.batchName,
      );
}

// Convert list of Hive object to list of entity
List<BatchEntity> toEntityList(List<Batchhivemodel> hiveList) {
  return hiveList.map((model) => model.toEntity()).toList();
}
