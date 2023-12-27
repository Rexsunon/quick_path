import 'package:freezed_annotation/freezed_annotation.dart';

part 'doodling_model.freezed.dart';
part 'doodling_model.g.dart';

@freezed
class DoodlingModel with _$DoodlingModel {
  const factory DoodlingModel({
    @JsonKey(name: "key_id") required String keyId,
    required String word,
    required String countrycode,
    required String timestamp,
    required bool recognized,
    required List<List<List<int>>> drawing,
  }) = _DoodlingModel;

  factory DoodlingModel.fromJson(Map<String, dynamic> json) => _$DoodlingModelFromJson(json);
}
