part of 'get_routes_bloc.dart';

sealed class GetRoutesEvent {} 

final class GetRoutesSearchInitiated extends GetRoutesEvent {
  final RouteRequestViewModel request;

  GetRoutesSearchInitiated({required this.request});
}