
import 'package:aviatickets_testapp/features/tickets_offers_page/domain/entity/tickets_entity.dart';
import 'package:aviatickets_testapp/features/tickets_offers_page/domain/usecase/fetch_tickets_offers_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'fetch_tickets_state.dart';

@lazySingleton
class FetchTicketsCubit extends Cubit<FetchTicketsState> {
  FetchTicketsCubit(this.fetchTicketsOffersUsecase) : super(FetchTicketsStateInitial());
  final FetchTicketsOffersUsecase fetchTicketsOffersUsecase;

  Future<void> fetchTicketsOffers() async{
    emit(FetchTicketsStateLoading());
    final ticketsResponseEither = await fetchTicketsOffersUsecase.fetchTickets();
    final ticketsEntity = ticketsResponseEither.toOption().toNullable();
    if(ticketsEntity == null){
      emit(FetchTicketsStateError());
      return;
    }
    if(ticketsEntity.ticketsOffers.isEmpty){
      emit(FetchTicketsStateEmpty());
      return;
    }
    emit(FetchTicketsStateLoaded(ticketsEntity));
  }
}
