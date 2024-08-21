import 'package:dio/dio.dart';
import 'package:flutter_bookly/Features/home/data/data_sources/home_local_data_source.dart';
import 'package:flutter_bookly/Features/home/data/data_sources/home_remote_data_source.dart';
import 'package:flutter_bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:flutter_bookly/core/utils/api_service.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocalDataSource: HomeLocalDataSourcesImpl(),
      homeRemoteDataSource: HomeRemoteDataSourcesImpl(
        getIt.get<ApiService>(),
      ),
    ),
  );
}
