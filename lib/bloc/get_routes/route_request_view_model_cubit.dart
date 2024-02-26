import 'package:bibiptrip_route_client/view_model/route_request/route_request_view_model.dart';
import 'package:bloc/bloc.dart';

class RouteRequestCubit extends Cubit<RouteRequestViewModel> {

  // ignore: prefer_const_constructors
  RouteRequestCubit() : super(RouteRequestViewModel());

  void updateDepartureCity(String city) {
    emit(state.copyWith(
      departureCity: city
    ));
  }

  void updateDestinationCity(String city) {
    emit(state.copyWith(
      destinationCity: city
    )); 
  }

  void updateDate(DateTime date) {
    emit(state.copyWith(
      dateTime: date
    ));
  }


}