// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selection_popup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectionPopupModel {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  /// Create a copy of SelectionPopupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectionPopupModelCopyWith<SelectionPopupModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectionPopupModelCopyWith<$Res> {
  factory $SelectionPopupModelCopyWith(
          SelectionPopupModel value, $Res Function(SelectionPopupModel) then) =
      _$SelectionPopupModelCopyWithImpl<$Res, SelectionPopupModel>;
  @useResult
  $Res call({int? id, String title, dynamic value, bool isSelected});
}

/// @nodoc
class _$SelectionPopupModelCopyWithImpl<$Res, $Val extends SelectionPopupModel>
    implements $SelectionPopupModelCopyWith<$Res> {
  _$SelectionPopupModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectionPopupModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? value = freezed,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectionPopupModelImplCopyWith<$Res>
    implements $SelectionPopupModelCopyWith<$Res> {
  factory _$$SelectionPopupModelImplCopyWith(_$SelectionPopupModelImpl value,
          $Res Function(_$SelectionPopupModelImpl) then) =
      __$$SelectionPopupModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String title, dynamic value, bool isSelected});
}

/// @nodoc
class __$$SelectionPopupModelImplCopyWithImpl<$Res>
    extends _$SelectionPopupModelCopyWithImpl<$Res, _$SelectionPopupModelImpl>
    implements _$$SelectionPopupModelImplCopyWith<$Res> {
  __$$SelectionPopupModelImplCopyWithImpl(_$SelectionPopupModelImpl _value,
      $Res Function(_$SelectionPopupModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectionPopupModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? value = freezed,
    Object? isSelected = null,
  }) {
    return _then(_$SelectionPopupModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SelectionPopupModelImpl implements _SelectionPopupModel {
  const _$SelectionPopupModelImpl(
      {this.id, required this.title, this.value, this.isSelected = false});

  @override
  final int? id;
  @override
  final String title;
  @override
  final dynamic value;
  @override
  @JsonKey()
  final bool isSelected;

  @override
  String toString() {
    return 'SelectionPopupModel(id: $id, title: $title, value: $value, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectionPopupModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title,
      const DeepCollectionEquality().hash(value), isSelected);

  /// Create a copy of SelectionPopupModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectionPopupModelImplCopyWith<_$SelectionPopupModelImpl> get copyWith =>
      __$$SelectionPopupModelImplCopyWithImpl<_$SelectionPopupModelImpl>(
          this, _$identity);
}

abstract class _SelectionPopupModel implements SelectionPopupModel {
  const factory _SelectionPopupModel(
      {final int? id,
      required final String title,
      final dynamic value,
      final bool isSelected}) = _$SelectionPopupModelImpl;

  @override
  int? get id;
  @override
  String get title;
  @override
  dynamic get value;
  @override
  bool get isSelected;

  /// Create a copy of SelectionPopupModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectionPopupModelImplCopyWith<_$SelectionPopupModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
