import 'package:aviatickets_testapp/features/music_main_page/domain/entity/music_entity.dart';
import 'package:aviatickets_testapp/features/music_main_page/domain/usecase/fetch_music_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'fetch_music_main_page_state.dart';

@lazySingleton
class FetchMusicMainPageCubit extends Cubit<FetchMusicMainPageState> {
  FetchMusicMainPageCubit(this.fetchMusicUsecase) : super(FetchMusicMainPageInitialState());
final FetchMusicUsecase fetchMusicUsecase;

  Future<void> fetchMusic() async{
    emit(FetchMusicMainPageLoadingState());
    final musicResponseEither = await fetchMusicUsecase.fetchMusic();
    final musicEntity = musicResponseEither.toOption().toNullable();
    if(musicEntity == null){
      emit(FetchMusicMainPageErrorState());
      return;
    }
    if(musicEntity.offers.isEmpty){
      emit(FetchMusicMainPageEmptyState());
      return;
    }
    emit(FetchMusicMainPageLoadedState(musicEntity));
  }
}
