part of 'get_routes_bloc.dart';

sealed class GetRoutesState {}

final class GetRoutesInitial extends GetRoutesState {} 
final class GetRoutesLoading extends GetRoutesState {} 
final class GetRoutesSuccess extends GetRoutesState {
  final List<RouteViewModel> routes;

  GetRoutesSuccess(this.routes);

} 
final class GetRoutesFailure extends GetRoutesState {
  final String errorMessage;

  GetRoutesFailure(this.errorMessage);
} 