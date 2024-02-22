import 'package:bibiptrip_route_client/models/route_model.dart';
import 'package:bibiptrip_route_client/repository/i_routes_repository.dart';
import 'package:bibiptrip_route_client/view_model/route/route_view_model.dart';
import 'package:bibiptrip_route_client/view_model/route_request/route_request_view_model.dart';
import 'package:bloc/bloc.dart';
import 'package:intl/intl.dart';

part 'get_routes_state.dart';
part 'get_routes_event.dart';

class GetRoutesBloc extends Bloc<GetRoutesEvent, GetRoutesState> {
  final IRoutesRepository routesRepository;
  GetRoutesBloc(this.routesRepository) : super(GetRoutesInitial()) {
    on<GetRoutesSearchInitiated>(
      (event, emit) async {
        await _onGetRoutesSearchIntiated(event, emit);
      },
    );
  }

  _onGetRoutesSearchIntiated(
      GetRoutesSearchInitiated event, Emitter<GetRoutesState> emit) async {
    emit(GetRoutesLoading());

    try {
      List<RouteModel> routes = await routesRepository.getRoutes(
          date: event.request.dateTime.toIso8601String(),
          departureCity: event.request.departureCity,
          destinationCity: event.request.destinationCity);
      List<RouteViewModel> routeModels = routes.map((route) {
        return RouteViewModel(
            driver: route.driverName,
            car: route.carModel,
            departureCity: route.departureCity,
            destinationCity: route.destinationCity,
            departureDate: DateFormat.yMMMMd()
                .format(DateTime.parse(route.departingDatetime)),
            arrivalDate: DateFormat.yMMMMd()
                .format(DateTime.parse(route.arrivingDatetime)),
            departureLocation: route.departureLocation,
            arrivalLocation: route.arrivingLocation,
            price: "${route.costOfRaid} \u{20CF}");
      }).toList();

      emit(GetRoutesSuccess(routeModels));
    } on Exception catch (e) {
      emit(GetRoutesFailure(e.toString()));
    }
  }
}
