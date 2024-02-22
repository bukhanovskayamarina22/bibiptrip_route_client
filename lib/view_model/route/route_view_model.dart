import 'package:bibiptrip_route_client/main.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'route_view_model.freezed.dart';
part 'route_view_model.g.dart';

@freezed
class RouteViewModel with _$RouteViewModel {
  const factory RouteViewModel({
    required String driver, 
    required String car, 
    required String departureCity,
    required String destinationCity,
    required String departureDate, 
    required String arrivalDate, 
    required String departureLocation, 
    required String arrivalLocation, 
    required String price,
  }) = _RouteViewModel;

  factory RouteViewModel.fromJson(Map<String, dynamic> json) =>
      _$RouteViewModelFromJson(json);
}
