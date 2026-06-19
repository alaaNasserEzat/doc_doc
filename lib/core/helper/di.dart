import 'package:dio/dio.dart';
import 'package:doc_doc/core/features/auth_feature/data/data_source/auth_remote_data_source.dart';
import 'package:doc_doc/core/features/auth_feature/data/repositories/auth_repo.dart';
import 'package:doc_doc/core/features/auth_feature/presentation/view_model/login_cubit.dart';
import 'package:doc_doc/core/features/auth_feature/presentation/view_model/sign_up_cubit.dart';
import 'package:doc_doc/core/networking/api_concumer.dart';
import 'package:doc_doc/core/networking/dio_concumer.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  // Register your dependencies here
  Dio dio=Dio();
  
  getIt.registerLazySingleton<ApiConcumer>(()=>DioConcumer(dio: dio));
  getIt.registerLazySingleton(()=>AuthRemoteDataSource(api: getIt()));
  getIt.registerLazySingleton(()=>AuthRepo(authRemoteDataSource: getIt()));
  getIt.registerFactory(()=>LoginCubit(getIt()));
  getIt.registerFactory(()=>SignUpCubit(getIt()));
}