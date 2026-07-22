import 'package:dio/dio.dart';
import 'package:doc_doc/features/appoitment/data/data_source/appoitment_remote_data_source/appoitment_remote_data_source.dart';
import 'package:doc_doc/features/appoitment/data/repo/appointment_repo.dart';
import 'package:doc_doc/features/appoitment/presentaion/view_model/appoitment_cubit.dart';
import 'package:doc_doc/features/auth_feature/data/data_source/auth_remote_data_source.dart';
import 'package:doc_doc/features/auth_feature/data/repositories/auth_repo.dart';
import 'package:doc_doc/features/auth_feature/presentation/view_model/login_cubit.dart';
import 'package:doc_doc/features/auth_feature/presentation/view_model/sign_up_cubit.dart';
import 'package:doc_doc/features/home_feature/data/data_source/home_remote_data_source.dart';
import 'package:doc_doc/features/home_feature/data/repo/home_repo.dart';
import 'package:doc_doc/features/home_feature/presentation/view_model/home_cubit.dart';
import 'package:doc_doc/features/profile/data/data_source/profile_remote_data_source.dart';
import 'package:doc_doc/features/profile/data/repo/profile_repo.dart';
import 'package:doc_doc/features/profile/presentation/view_model/profile_cubit.dart';
import 'package:doc_doc/features/search/data/data_source/search_data_source.dart';
import 'package:doc_doc/features/search/data/repo/search_repo.dart';
import 'package:doc_doc/features/search/presentation/view_model/search_cubit.dart';
import 'package:doc_doc/core/networking/api_concumer.dart';
import 'package:doc_doc/core/networking/dio_concumer.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  // Register your dependencies here
  Dio dio = Dio();

  getIt.registerLazySingleton<ApiConcumer>(() => DioConcumer(dio: dio));
  getIt.registerLazySingleton(() => AuthRemoteDataSource(api: getIt()));
  getIt.registerLazySingleton(() => AuthRepo(authRemoteDataSource: getIt()));
  getIt.registerFactory(() => LoginCubit(getIt()));
  getIt.registerFactory(() => SignUpCubit(getIt()));
  //home
  getIt.registerLazySingleton(() => HomeRemoteDataSource(apiConcumer: getIt()));
  getIt.registerLazySingleton(() => HomeRepo(homeRemoteDataSource: getIt()));
  getIt.registerFactory(() => HomeCubit(getIt()));

  //appointment
  //home
  getIt.registerLazySingleton(
    () => AppoitmentRemoteDataSource(apiConcumer: getIt()),
  );
  getIt.registerLazySingleton(
    () => AppointmentRepo(appoitmentRemoteDataSource: getIt()),
  );
  getIt.registerFactory(() => AppointmentCubit(getIt()));

  //profile
  getIt.registerLazySingleton(
    () => ProfileRemoteDataSource(apiConsumer: getIt()),
  );
  getIt.registerLazySingleton(
    () => ProfileRepo(profileRemoteDataSource: getIt()),
  );
  getIt.registerFactory(() => ProfileCubit(getIt()));
  //search
  getIt.registerLazySingleton(() => SearchDataSource(apiConcumer: getIt()));
  getIt.registerLazySingleton(() => SearchRepo(searchDataSource: getIt()));
  getIt.registerFactory(() => SearchCubit(getIt()));
}
