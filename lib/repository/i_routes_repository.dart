import 'package:bibiptrip_route_client/models/route_model.dart';

abstract class IRoutesRepository {
  Future<List<RouteModel>> getRoutes(
      {required String date,
      required String departureCity,
      required String destinationCity});
}
