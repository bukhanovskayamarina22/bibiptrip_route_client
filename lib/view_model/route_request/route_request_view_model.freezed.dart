// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_request_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RouteRequestViewModel _$RouteRequestViewModelFromJson(
    Map<String, dynamic> json) {
  return _RouteRequestViewModel.fromJson(json);
}

/// @nodoc
mixin _$RouteRequestViewModel {
  DateTime get dateTime => throw _privateConstructorUsedError;
  String get departureCity => throw _privateConstructorUsedError;
  String get destinationCity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RouteRequestViewModelCopyWith<RouteRequestViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteRequestViewModelCopyWith<$Res> {
  factory $RouteRequestViewModelCopyWith(RouteRequestViewModel value,
          $Res Function(RouteRequestViewModel) then) =
      _$RouteRequestViewModelCopyWithImpl<$Res, RouteRequestViewModel>;
  @useResult
  $Res call({DateTime dateTime, String departureCity, String destinationCity});
}

/// @nodoc
class _$RouteRequestViewModelCopyWithImpl<$Res,
        $Val extends RouteRequestViewModel>
    implements $RouteRequestViewModelCopyWith<$Res> {
  _$RouteRequestViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? departureCity = null,
    Object? destinationCity = null,
  }) {
    return _then(_value.copyWith(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      departureCity: null == departureCity
          ? _value.departureCity
          : departureCity // ignore: cast_nullable_to_non_nullable
              as String,
      destinationCity: null == destinationCity
          ? _value.destinationCity
          : destinationCity // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RouteRequestViewModelImplCopyWith<$Res>
    implements $RouteRequestViewModelCopyWith<$Res> {
  factory _$$RouteRequestViewModelImplCopyWith(
          _$RouteRequestViewModelImpl value,
          $Res Function(_$RouteRequestViewModelImpl) then) =
      __$$RouteRequestViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime dateTime, String departureCity, String destinationCity});
}

/// @nodoc
class __$$RouteRequestViewModelImplCopyWithImpl<$Res>
    extends _$RouteRequestViewModelCopyWithImpl<$Res,
        _$RouteRequestViewModelImpl>
    implements _$$RouteRequestViewModelImplCopyWith<$Res> {
  __$$RouteRequestViewModelImplCopyWithImpl(_$RouteRequestViewModelImpl _value,
      $Res Function(_$RouteRequestViewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? departureCity = null,
    Object? destinationCity = null,
  }) {
    return _then(_$RouteRequestViewModelImpl(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      departureCity: null == departureCity
          ? _value.departureCity
          : departureCity // ignore: cast_nullable_to_non_nullable
              as String,
      destinationCity: null == destinationCity
          ? _value.destinationCity
          : destinationCity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RouteRequestViewModelImpl
    with DiagnosticableTreeMixin
    implements _RouteRequestViewModel {
  const _$RouteRequestViewModelImpl(
      {required this.dateTime,
      required this.departureCity,
      required this.destinationCity});

  factory _$RouteRequestViewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouteRequestViewModelImplFromJson(json);

  @override
  final DateTime dateTime;
  @override
  final String departureCity;
  @override
  final String destinationCity;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RouteRequestViewModel(dateTime: $dateTime, departureCity: $departureCity, destinationCity: $destinationCity)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RouteRequestViewModel'))
      ..add(DiagnosticsProperty('dateTime', dateTime))
      ..add(DiagnosticsProperty('departureCity', departureCity))
      ..add(DiagnosticsProperty('destinationCity', destinationCity));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouteRequestViewModelImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.departureCity, departureCity) ||
                other.departureCity == departureCity) &&
            (identical(other.destinationCity, destinationCity) ||
                other.destinationCity == destinationCity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, dateTime, departureCity, destinationCity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RouteRequestViewModelImplCopyWith<_$RouteRequestViewModelImpl>
      get copyWith => __$$RouteRequestViewModelImplCopyWithImpl<
          _$RouteRequestViewModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RouteRequestViewModelImplToJson(
      this,
    );
  }
}

abstract class _RouteRequestViewModel implements RouteRequestViewModel {
  const factory _RouteRequestViewModel(
      {required final DateTime dateTime,
      required final String departureCity,
      required final String destinationCity}) = _$RouteRequestViewModelImpl;

  factory _RouteRequestViewModel.fromJson(Map<String, dynamic> json) =
      _$RouteRequestViewModelImpl.fromJson;

  @override
  DateTime get dateTime;
  @override
  String get departureCity;
  @override
  String get destinationCity;
  @override
  @JsonKey(ignore: true)
  _$$RouteRequestViewModelImplCopyWith<_$RouteRequestViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
