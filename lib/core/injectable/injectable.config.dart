// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i3;

import '../../features/all_tickets_page/presentation/controller/show_entire_route_controller.dart'
    as _i10;
import '../../features/all_tickets_page/presentation/cubit/show_entire_route_cubit.dart'
    as _i11;
import '../../features/cache_data/data/data_source/local_data_source/cache_data_client.dart'
    as _i7;
import '../../features/cache_data/data/data_source/local_data_source/cache_data_local_data_source.dart'
    as _i15;
import '../../features/cache_data/data/data_source/local_data_source/cache_data_local_data_source_impl.dart'
    as _i16;
import '../../features/common/presentation/controller/text_field_controller_manager_controller.dart'
    as _i12;
import '../../features/music_main_page/data/data_source/music_remote_data_source/music_remote_data_source.dart'
    as _i5;
import '../../features/music_main_page/data/repository_impl/fetch_music_repository_impl.dart'
    as _i20;
import '../../features/music_main_page/domain/repository/fetch_music_repository.dart'
    as _i19;
import '../../features/music_main_page/domain/usecase/fetch_music_usecase.dart'
    as _i23;
import '../../features/music_main_page/presentation/controller/get_last_search_word_controller.dart'
    as _i17;
import '../../features/music_main_page/presentation/controller/save_last_search_word_controller.dart'
    as _i18;
import '../../features/music_main_page/presentation/cubit/fetch_music_main_page_cubit.dart'
    as _i26;
import '../../features/tickets_offers_page/data/remote_data_source/tickets_offers_remote_data_source.dart'
    as _i6;
import '../../features/tickets_offers_page/data/repository_impl/fetch_tickets_offers_repository_impl.dart'
    as _i22;
import '../../features/tickets_offers_page/domain/repository/fetch_tickets_offers_repository.dart'
    as _i21;
import '../../features/tickets_offers_page/domain/usecase/fetch_tickets_offers_usecase.dart'
    as _i24;
import '../../features/tickets_offers_page/presentation/controller/clear_text_field_controller.dart'
    as _i8;
import '../../features/tickets_offers_page/presentation/controller/switch_texts_controller.dart'
    as _i9;
import '../../features/tickets_offers_page/presentation/cubit/fetch_tickets_cubit.dart'
    as _i25;
import '../network/internet_connection_checker.dart' as _i27;
import '../network/network_info.dart' as _i13;
import '../network/network_info_impl.dart' as _i14;
import '../route/route.dart' as _i4;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModuleConnectionChecker = _$RegisterModuleConnectionChecker();
  gh.factory<_i3.InternetConnectionChecker>(
      () => registerModuleConnectionChecker.internetConnection);
  gh.lazySingleton<_i4.AppRouter>(() => _i4.AppRouter());
  gh.lazySingleton<_i5.MusicRemoteDataSourceClient>(
      () => _i5.MusicRemoteDataSourceClient());
  gh.lazySingleton<_i6.TicketsOffersRemoteDataSourceClient>(
      () => _i6.TicketsOffersRemoteDataSourceClient());
  gh.lazySingleton<_i7.CacheDataClient>(() => _i7.CacheDataClient());
  gh.lazySingleton<_i8.ClearTextFieldController>(
      () => _i8.ClearTextFieldController());
  gh.lazySingleton<_i9.SwitchTextsController>(
      () => _i9.SwitchTextsController());
  gh.lazySingleton<_i10.ShowEntireRouteController>(
      () => _i10.ShowEntireRouteController());
  gh.lazySingleton<_i11.ShowEntireRouteCubit>(
      () => _i11.ShowEntireRouteCubit());
  gh.lazySingleton<_i12.TextFieldControllerManagerController>(
      () => _i12.TextFieldControllerManagerController());
  gh.lazySingleton<_i13.NetworkInfo>(
      () => _i14.NetworkInfoImpl(gh<_i3.InternetConnectionChecker>()));
  gh.lazySingleton<_i15.CacheDataLocalDataSource>(
      () => _i16.CacheDataLocalDataSourceImpl(gh<_i7.CacheDataClient>()));
  gh.lazySingleton<_i17.GetLastSearchWordController>(() =>
      _i17.GetLastSearchWordController(gh<_i15.CacheDataLocalDataSource>()));
  gh.lazySingleton<_i18.SaveLastSearchWordController>(() =>
      _i18.SaveLastSearchWordController(gh<_i15.CacheDataLocalDataSource>()));
  gh.lazySingleton<_i19.FetchMusicRepository>(
      () => _i20.FetchMusicRepositoryImpl(
            gh<_i13.NetworkInfo>(),
            gh<_i5.MusicRemoteDataSourceClient>(),
          ));
  gh.lazySingleton<_i21.FetchTicketsOffersRepository>(
      () => _i22.FetchTicketsOffersRepositoryImpl(
            gh<_i13.NetworkInfo>(),
            gh<_i6.TicketsOffersRemoteDataSourceClient>(),
          ));
  gh.factory<_i23.FetchMusicUsecase>(
      () => _i23.FetchMusicUsecase(gh<_i19.FetchMusicRepository>()));
  gh.factory<_i24.FetchTicketsOffersUsecase>(() =>
      _i24.FetchTicketsOffersUsecase(gh<_i21.FetchTicketsOffersRepository>()));
  gh.lazySingleton<_i25.FetchTicketsCubit>(
      () => _i25.FetchTicketsCubit(gh<_i24.FetchTicketsOffersUsecase>()));
  gh.lazySingleton<_i26.FetchMusicMainPageCubit>(
      () => _i26.FetchMusicMainPageCubit(gh<_i23.FetchMusicUsecase>()));
  return getIt;
}

class _$RegisterModuleConnectionChecker
    extends _i27.RegisterModuleConnectionChecker {}
