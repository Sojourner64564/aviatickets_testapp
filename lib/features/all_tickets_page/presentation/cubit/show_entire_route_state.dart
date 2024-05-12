part of 'show_entire_route_cubit.dart';

@immutable
abstract class ShowEntireRouteState {}

class ShowEntireRouteStateInitial extends ShowEntireRouteState {}
class ShowEntireRouteStateLoading extends ShowEntireRouteState {}
class ShowEntireRouteStateLoaded extends ShowEntireRouteState {
  final String text;

  ShowEntireRouteStateLoaded(this.text);
}
class ShowEntireRouteStateError extends ShowEntireRouteState {}
