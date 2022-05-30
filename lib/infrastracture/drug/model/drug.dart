// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'drug.freezed.dart';
part 'drug.g.dart';

@freezed
class DrugModel with _$DrugModel {
  factory DrugModel({
    required int id,
    required String title,
    String? dosage,
    @JsonKey(name: 'date_start') String? dateStart,
    @JsonKey(name: 'date_end') String? dateEnd,
    String? image,
    String? comment,
  }) = _DrugModel;

  factory DrugModel.fromJson(Map<String, dynamic> json) =>
      _$DrugModelFromJson(json);
}
