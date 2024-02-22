import 'package:bibiptrip_route_client/models/route_model.dart';
import 'package:bibiptrip_route_client/repository/i_routes_repository.dart';
import 'package:dio/dio.dart';

class NetworkRoutesRepository implements IRoutesRepository {
  final Dio _dio;

  NetworkRoutesRepository(this._dio);

  @override
  Future<List<RouteModel>> getRoutes({
    required String date,
    required String departureCity,
    required String destinationCity,
  }) async {
    try {
      final response = await _dio.get(
        'https://bibiptrip.com/api/avibus/search_trips_cities/',
        queryParameters: {
          'departure_city': departureCity,
          'destination_city': destinationCity,
          'date': date,
        },
      );

      final List<dynamic> data = response.data['trips'];
      final routes = data.map((route) {
        return RouteModel(
            id: route["Id"],
            routeId: route["RouteId"],
            driverName: route["Driver1"] ?? route["Driver2"],
            carModel: route["Bus"]["Model"],
            costOfRaid: route["PassengerFareCost"],
            departureCity: departureCity,
            destinationCity: destinationCity,
            departingDatetime: route["DepartureTime"],
            arrivingDatetime: route["ArrivalTime"],
            departureLocation: route["Departure"]["Name"],
            arrivingLocation: route["Destination"]["Уфа ТРК Иремель"]);
      }).toList();

      return routes;
    } catch (e) {
      throw Exception('Failed to get routes: $e');
    }
  }
}
