// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RouteModelImpl _$$RouteModelImplFromJson(Map<String, dynamic> json) =>
    _$RouteModelImpl(
      id: json['id'] as String,
      routeId: json['routeId'] as String,
      driverName: json['driverName'] as String? ?? "Неизвестно",
      carModel: json['carModel'] as String,
      costOfRaid: (json['costOfRaid'] as num).toDouble(),
      departureCity: json['departureCity'] as String,
      destinationCity: json['destinationCity'] as String,
      departingDatetime: json['departingDatetime'] as String,
      arrivingDatetime: json['arrivingDatetime'] as String,
      departureLocation: json['departureLocation'] as String,
      arrivingLocation: json['arrivingLocation'] as String,
    );

Map<String, dynamic> _$$RouteModelImplToJson(_$RouteModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'routeId': instance.routeId,
      'driverName': instance.driverName,
      'carModel': instance.carModel,
      'costOfRaid': instance.costOfRaid,
      'departureCity': instance.departureCity,
      'destinationCity': instance.destinationCity,
      'departingDatetime': instance.departingDatetime,
      'arrivingDatetime': instance.arrivingDatetime,
      'departureLocation': instance.departureLocation,
      'arrivingLocation': instance.arrivingLocation,
    };
