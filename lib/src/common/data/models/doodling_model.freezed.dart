// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doodling_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DoodlingModel _$DoodlingModelFromJson(Map<String, dynamic> json) {
  return _DoodlingModel.fromJson(json);
}

/// @nodoc
mixin _$DoodlingModel {
  @JsonKey(name: "key_id")
  String get keyId => throw _privateConstructorUsedError;
  String get word => throw _privateConstructorUsedError;
  String get countrycode => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  bool get recognized => throw _privateConstructorUsedError;
  List<List<List<int>>> get drawing => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DoodlingModelCopyWith<DoodlingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoodlingModelCopyWith<$Res> {
  factory $DoodlingModelCopyWith(
          DoodlingModel value, $Res Function(DoodlingModel) then) =
      _$DoodlingModelCopyWithImpl<$Res, DoodlingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "key_id") String keyId,
      String word,
      String countrycode,
      String timestamp,
      bool recognized,
      List<List<List<int>>> drawing});
}

/// @nodoc
class _$DoodlingModelCopyWithImpl<$Res, $Val extends DoodlingModel>
    implements $DoodlingModelCopyWith<$Res> {
  _$DoodlingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyId = null,
    Object? word = null,
    Object? countrycode = null,
    Object? timestamp = null,
    Object? recognized = null,
    Object? drawing = null,
  }) {
    return _then(_value.copyWith(
      keyId: null == keyId
          ? _value.keyId
          : keyId // ignore: cast_nullable_to_non_nullable
              as String,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      countrycode: null == countrycode
          ? _value.countrycode
          : countrycode // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      recognized: null == recognized
          ? _value.recognized
          : recognized // ignore: cast_nullable_to_non_nullable
              as bool,
      drawing: null == drawing
          ? _value.drawing
          : drawing // ignore: cast_nullable_to_non_nullable
              as List<List<List<int>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DoodlingModelImplCopyWith<$Res>
    implements $DoodlingModelCopyWith<$Res> {
  factory _$$DoodlingModelImplCopyWith(
          _$DoodlingModelImpl value, $Res Function(_$DoodlingModelImpl) then) =
      __$$DoodlingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "key_id") String keyId,
      String word,
      String countrycode,
      String timestamp,
      bool recognized,
      List<List<List<int>>> drawing});
}

/// @nodoc
class __$$DoodlingModelImplCopyWithImpl<$Res>
    extends _$DoodlingModelCopyWithImpl<$Res, _$DoodlingModelImpl>
    implements _$$DoodlingModelImplCopyWith<$Res> {
  __$$DoodlingModelImplCopyWithImpl(
      _$DoodlingModelImpl _value, $Res Function(_$DoodlingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyId = null,
    Object? word = null,
    Object? countrycode = null,
    Object? timestamp = null,
    Object? recognized = null,
    Object? drawing = null,
  }) {
    return _then(_$DoodlingModelImpl(
      keyId: null == keyId
          ? _value.keyId
          : keyId // ignore: cast_nullable_to_non_nullable
              as String,
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      countrycode: null == countrycode
          ? _value.countrycode
          : countrycode // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      recognized: null == recognized
          ? _value.recognized
          : recognized // ignore: cast_nullable_to_non_nullable
              as bool,
      drawing: null == drawing
          ? _value._drawing
          : drawing // ignore: cast_nullable_to_non_nullable
              as List<List<List<int>>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DoodlingModelImpl implements _DoodlingModel {
  const _$DoodlingModelImpl(
      {@JsonKey(name: "key_id") required this.keyId,
      required this.word,
      required this.countrycode,
      required this.timestamp,
      required this.recognized,
      required final List<List<List<int>>> drawing})
      : _drawing = drawing;

  factory _$DoodlingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoodlingModelImplFromJson(json);

  @override
  @JsonKey(name: "key_id")
  final String keyId;
  @override
  final String word;
  @override
  final String countrycode;
  @override
  final String timestamp;
  @override
  final bool recognized;
  final List<List<List<int>>> _drawing;
  @override
  List<List<List<int>>> get drawing {
    if (_drawing is EqualUnmodifiableListView) return _drawing;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drawing);
  }

  @override
  String toString() {
    return 'DoodlingModel(keyId: $keyId, word: $word, countrycode: $countrycode, timestamp: $timestamp, recognized: $recognized, drawing: $drawing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoodlingModelImpl &&
            (identical(other.keyId, keyId) || other.keyId == keyId) &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.countrycode, countrycode) ||
                other.countrycode == countrycode) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.recognized, recognized) ||
                other.recognized == recognized) &&
            const DeepCollectionEquality().equals(other._drawing, _drawing));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, keyId, word, countrycode,
      timestamp, recognized, const DeepCollectionEquality().hash(_drawing));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoodlingModelImplCopyWith<_$DoodlingModelImpl> get copyWith =>
      __$$DoodlingModelImplCopyWithImpl<_$DoodlingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DoodlingModelImplToJson(
      this,
    );
  }
}

abstract class _DoodlingModel implements DoodlingModel {
  const factory _DoodlingModel(
      {@JsonKey(name: "key_id") required final String keyId,
      required final String word,
      required final String countrycode,
      required final String timestamp,
      required final bool recognized,
      required final List<List<List<int>>> drawing}) = _$DoodlingModelImpl;

  factory _DoodlingModel.fromJson(Map<String, dynamic> json) =
      _$DoodlingModelImpl.fromJson;

  @override
  @JsonKey(name: "key_id")
  String get keyId;
  @override
  String get word;
  @override
  String get countrycode;
  @override
  String get timestamp;
  @override
  bool get recognized;
  @override
  List<List<List<int>>> get drawing;
  @override
  @JsonKey(ignore: true)
  _$$DoodlingModelImplCopyWith<_$DoodlingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
