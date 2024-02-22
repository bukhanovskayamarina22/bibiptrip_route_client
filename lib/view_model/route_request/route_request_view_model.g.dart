// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_request_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RouteRequestViewModelImpl _$$RouteRequestViewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RouteRequestViewModelImpl(
      dateTime: DateTime.parse(json['dateTime'] as String),
      departureCity: json['departureCity'] as String,
      destinationCity: json['destinationCity'] as String,
    );

Map<String, dynamic> _$$RouteRequestViewModelImplToJson(
        _$RouteRequestViewModelImpl instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime.toIso8601String(),
      'departureCity': instance.departureCity,
      'destinationCity': instance.destinationCity,
    };
