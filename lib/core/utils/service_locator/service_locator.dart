
// import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:trent_assessment/feature/home/presentation/view_model/like_cubit/fav_cubit.dart';

final getIt = GetIt.instance;
void setUp(){
 

    getIt.registerFactory(() => FavoriteCubit());



}
