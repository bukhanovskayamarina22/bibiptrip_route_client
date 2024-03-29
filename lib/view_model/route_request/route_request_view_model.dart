import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'route_request_view_model.freezed.dart';
part 'route_request_view_model.g.dart';

@freezed
class RouteRequestViewModel with _$RouteRequestViewModel {
  const factory RouteRequestViewModel({
    DateTime? dateTime,
    String? departureCity,
    String? destinationCity,
  }) = _RouteRequestViewModel;

  factory RouteRequestViewModel.fromJson(Map<String, dynamic> json) =>
      _$RouteRequestViewModelFromJson(json);
}

