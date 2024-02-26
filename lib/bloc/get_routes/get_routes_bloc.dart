import 'package:bibiptrip_route_client/models/route_model.dart';
import 'package:bibiptrip_route_client/repository/i_routes_repository.dart';
import 'package:bibiptrip_route_client/view_model/route/route_view_model.dart';
import 'package:bibiptrip_route_client/view_model/route_request/route_request_view_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
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
      if (event.request.departureCity != null &&
          event.request.destinationCity != null &&
          event.request.departureCity != event.request.destinationCity) {
        List<RouteModel> routes = await routesRepository.getRoutes(
            date: event.request.dateTime!.toIso8601String().split("T")[0],
            departureCity: event.request.departureCity!,
            destinationCity: event.request.destinationCity!);

        List<RouteViewModel> routeModels = routes.map((route) {
          return RouteViewModel(
              driver: route.driverName ?? "Неизвестно",
              car: route.carModel,
              departureCity: route.departureCity,
              destinationCity: route.destinationCity,
              departureDate: _formatDate(route.departingDatetime),
              arrivalDate: _formatDate(route.arrivingDatetime),
              departureLocation: route.departureLocation,
              arrivalLocation: route.arrivingLocation,
              price: "${route.costOfRaid} \u{20CF}");
        }).toList();

        emit(GetRoutesSuccess(routeModels));
      } else if (event.request.departureCity == null) {
        emit(GetRoutesFailure("Enter departure city"));
      } else if (event.request.destinationCity == null) {
        emit(GetRoutesFailure("Enter destination city"));
      } else if (event.request.departureCity == event.request.destinationCity) {
        emit(GetRoutesFailure(
            "The departure city and the destination city cannot be the same"));
      }
    } on Exception catch (e) {
      emit(GetRoutesFailure(e.toString()));
    }
  }

  String _formatDate(String isoDate) {
    DateTime date = DateTime.parse(isoDate);

    String monthEng = DateFormat('MMMM').format(date);
    String month = "";
    switch (monthEng) {
      case "January":
        month = "января";
        break;
      case "February":
        month = "февраля";
        break;
      case "March":
        month = "марта";
        break;
      case "April":
        month = "апреля";
        break;
      case "May":
        month = "мая";
        break;
      case "June":
        month = "июня";
        break;
      case "July":
        month = "июля";
        break;
      case "August":
        month = "августа";
        break;
      case "September":
        month = "сентября";
        break;
      case "October":
        month = "октября";
        break;
      case "November":
        month = "ноября";
        break;
      case "December":
        month = "декабря";
        break;
      default:
        month = "января";
        break;
    }
    String day = date.day.toString();
    String hours = date.hour.toString().padLeft(2, '0');
    String minutes = date.minute.toString().padLeft(2, '0');

    return '$day $month, $hours:$minutes';
  }
}
