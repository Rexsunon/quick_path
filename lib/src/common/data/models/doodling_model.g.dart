// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doodling_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoodlingModelImpl _$$DoodlingModelImplFromJson(Map<String, dynamic> json) =>
    _$DoodlingModelImpl(
      keyId: json['key_id'] as String,
      word: json['word'] as String,
      countrycode: json['countrycode'] as String,
      timestamp: json['timestamp'] as String,
      recognized: json['recognized'] as bool,
      drawing: (json['drawing'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => (e as List<dynamic>).map((e) => e as int).toList())
              .toList())
          .toList(),
    );

Map<String, dynamic> _$$DoodlingModelImplToJson(_$DoodlingModelImpl instance) =>
    <String, dynamic>{
      'key_id': instance.keyId,
      'word': instance.word,
      'countrycode': instance.countrycode,
      'timestamp': instance.timestamp,
      'recognized': instance.recognized,
      'drawing': instance.drawing,
    };
