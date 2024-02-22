import 'package:bibiptrip_route_client/models/route_model.dart';

abstract class IRoutesRepository {
  Future<List<RouteModel>> getRoutes(
      {required String date,
      required String departureCity,
      required String destinationCity});
  // Future<Route> createRoute(Route route);
  // Future<void> updateRoute(Route route);
  // Future<void> deleteRoute(String id);
}
