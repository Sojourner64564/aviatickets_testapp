import 'package:aviatickets_testapp/features/all_tickets_page/domain/entity/all_tickets_entity.dart';
import 'package:aviatickets_testapp/features/all_tickets_page/domain/usecase/fetch_all_tickets_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'fetch_all_tickets_state.dart';

@lazySingleton
class FetchAllTicketsCubit extends Cubit<FetchAllTicketsState> {
  FetchAllTicketsCubit(this.fetchAllTicketsUsecase) : super(FetchAllTicketsStateInitial());
  final FetchAllTicketsUsecase fetchAllTicketsUsecase;

  Future<void> fetchAllTickets() async{
    emit(FetchAllTicketsStateLoading());
    final allTicketsResponseEither = await fetchAllTicketsUsecase.fetchAllTickets();
    final allTicketsEntity = allTicketsResponseEither.toOption().toNullable();
    if(allTicketsEntity == null){
      emit(FetchAllTicketsStateError());
      return;
    }
    if(allTicketsEntity.tickets.isEmpty){
      emit(FetchAllTicketsStateEmpty());
      return;
    }
    emit(FetchAllTicketsStateLoaded(allTicketsEntity));
  }
}
