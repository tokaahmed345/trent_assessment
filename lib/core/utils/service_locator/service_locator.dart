
// import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUp(){
 
  // getIt.registerLazySingleton<Dio>(() => Dio());
  // getIt.registerLazySingleton<ApiService>(
  //     () => DioConsumer(dio: getIt<Dio>()));
  // getIt.registerLazySingleton<SignUpRepo>(()=>SignUpRepoImpl(firebaseAuth:  getIt.get<FirebaseAuth>(), firestore:getIt.get<FirebaseFirestore>(), sharedPrefs: getIt.get<SharedPrefs>() ));
  // getIt.registerFactory<SignUpCubit>(()=>SignUpCubit(getIt.get<SignUpRepo>()));
 

    // getIt.registerFactory(() => DiseasesCubit( getIt<DiseaseRepo>()));



}
