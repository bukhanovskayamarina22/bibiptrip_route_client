import 'package:freezed_annotation/freezed_annotation.dart';

part 'route_model.freezed.dart';
part 'route_model.g.dart';

@freezed
abstract class RouteModel with _$RouteModel {
  const factory RouteModel({
    required String id,
    required String routeId,
    String? driverName,
    required String carModel,
    required String costOfRaid,
    required String departureCity,
    required String destinationCity,
    required String departingDatetime,
    required String arrivingDatetime,
    required String departureLocation,
    required String arrivingLocation,
  }) = _RouteModel;

  factory RouteModel.fromJson(Map<String, dynamic> json) => _$RouteModelFromJson(json);
}