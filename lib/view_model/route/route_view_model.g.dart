// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RouteViewModelImpl _$$RouteViewModelImplFromJson(Map<String, dynamic> json) =>
    _$RouteViewModelImpl(
      driver: json['driver'] as String,
      car: json['car'] as String,
      departureCity: json['departureCity'] as String,
      destinationCity: json['destinationCity'] as String,
      departureDate: json['departureDate'] as String,
      arrivalDate: json['arrivalDate'] as String,
      departureLocation: json['departureLocation'] as String,
      arrivalLocation: json['arrivalLocation'] as String,
      price: json['price'] as String,
    );

Map<String, dynamic> _$$RouteViewModelImplToJson(
        _$RouteViewModelImpl instance) =>
    <String, dynamic>{
      'driver': instance.driver,
      'car': instance.car,
      'departureCity': instance.departureCity,
      'destinationCity': instance.destinationCity,
      'departureDate': instance.departureDate,
      'arrivalDate': instance.arrivalDate,
      'departureLocation': instance.departureLocation,
      'arrivalLocation': instance.arrivalLocation,
      'price': instance.price,
    };
