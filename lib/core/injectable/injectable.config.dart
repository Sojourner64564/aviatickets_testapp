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

import '../../features/music_main_page/data/data_source/music_remote_data_source/music_remote_data_source.dart'
    as _i5;
import '../../features/music_main_page/data/repository_impl/fetch_music_repository_impl.dart'
    as _i12;
import '../../features/music_main_page/domain/repository/fetch_music_repository.dart'
    as _i11;
import '../../features/music_main_page/domain/usecase/fetch_music_usecase.dart'
    as _i13;
import '../../features/music_main_page/presentation/cubit/fetch_music_main_page_cubit.dart'
    as _i14;
import '../../features/tickets_offers_page/data/remote_data_source/tickets_offers_remote_data_source.dart'
    as _i6;
import '../../features/tickets_offers_page/domain/usecase/fetch_tickets_offers_usecase.dart'
    as _i8;
import '../../features/tickets_offers_page/presentation/cubit/fetch_tickets_cubit.dart'
    as _i7;
import '../network/internet_connection_checker.dart' as _i15;
import '../network/network_info.dart' as _i9;
import '../network/network_info_impl.dart' as _i10;
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
  gh.lazySingleton<_i7.FetchTicketsCubit>(
      () => _i7.FetchTicketsCubit(gh<_i8.FetchTicketsOffersUsecase>()));
  gh.lazySingleton<_i9.NetworkInfo>(
      () => _i10.NetworkInfoImpl(gh<_i3.InternetConnectionChecker>()));
  gh.lazySingleton<_i11.FetchMusicRepository>(
      () => _i12.FetchMusicRepositoryImpl(
            gh<_i9.NetworkInfo>(),
            gh<_i5.MusicRemoteDataSourceClient>(),
          ));
  gh.factory<_i13.FetchMusicUsecase>(
      () => _i13.FetchMusicUsecase(gh<_i11.FetchMusicRepository>()));
  gh.lazySingleton<_i14.FetchMusicMainPageCubit>(
      () => _i14.FetchMusicMainPageCubit(gh<_i13.FetchMusicUsecase>()));
  return getIt;
}

class _$RegisterModuleConnectionChecker
    extends _i15.RegisterModuleConnectionChecker {}
