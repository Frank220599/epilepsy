import 'package:freezed_annotation/freezed_annotation.dart';

part 'seizure.freezed.dart';
part 'seizure.g.dart';

@freezed
abstract class SeizureModel with _$SeizureModel {
  const factory SeizureModel({
    required int id,
    required String date,
    required String duration,
    required String type,
    String? reason,
    required String activity,
    required String place,
    String? notice,
  }) = _SeizureModel;

  factory SeizureModel.fromJson(Map<String, dynamic> json) =>
      _$SeizureModelFromJson(json);
}
