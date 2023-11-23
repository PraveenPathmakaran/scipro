// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminData {
  UniqueId get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminDataCopyWith<AdminData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminDataCopyWith<$Res> {
  factory $AdminDataCopyWith(AdminData value, $Res Function(AdminData) then) =
      _$AdminDataCopyWithImpl<$Res, AdminData>;
  @useResult
  $Res call({UniqueId id});
}

/// @nodoc
class _$AdminDataCopyWithImpl<$Res, $Val extends AdminData>
    implements $AdminDataCopyWith<$Res> {
  _$AdminDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminDataImplCopyWith<$Res>
    implements $AdminDataCopyWith<$Res> {
  factory _$$AdminDataImplCopyWith(
          _$AdminDataImpl value, $Res Function(_$AdminDataImpl) then) =
      __$$AdminDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueId id});
}

/// @nodoc
class __$$AdminDataImplCopyWithImpl<$Res>
    extends _$AdminDataCopyWithImpl<$Res, _$AdminDataImpl>
    implements _$$AdminDataImplCopyWith<$Res> {
  __$$AdminDataImplCopyWithImpl(
      _$AdminDataImpl _value, $Res Function(_$AdminDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$AdminDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$AdminDataImpl implements _AdminData {
  const _$AdminDataImpl({required this.id});

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'AdminData(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminDataImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminDataImplCopyWith<_$AdminDataImpl> get copyWith =>
      __$$AdminDataImplCopyWithImpl<_$AdminDataImpl>(this, _$identity);
}

abstract class _AdminData implements AdminData {
  const factory _AdminData({required final UniqueId id}) = _$AdminDataImpl;

  @override
  UniqueId get id;
  @override
  @JsonKey(ignore: true)
  _$$AdminDataImplCopyWith<_$AdminDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
