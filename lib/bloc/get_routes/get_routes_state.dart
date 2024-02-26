part of 'get_routes_bloc.dart';


sealed class GetRoutesState extends Equatable {}

final class GetRoutesInitial extends GetRoutesState {
  @override
  List<Object?> get props => [];
} 
final class GetRoutesLoading extends GetRoutesState {
  @override
  List<Object?> get props => [];
} 
final class GetRoutesSuccess extends GetRoutesState {
  final List<RouteViewModel> routes;

  GetRoutesSuccess(this.routes);
  
  @override
  List<Object?> get props => [routes];

} 
final class GetRoutesFailure extends GetRoutesState {
  final String errorMessage;

  GetRoutesFailure(this.errorMessage);
  
  @override
  List<Object?> get props => [errorMessage];
} 