import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trent_assessment/core/utils/colors/app_colors.dart';
import 'package:trent_assessment/core/utils/service_locator/service_locator.dart';
import 'package:trent_assessment/feature/home/presentation/view_model/like_cubit/fav_cubit.dart';
import 'package:trent_assessment/feature/home/presentation/widgets/home_view_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: BlocProvider(
        create: (context) =>getIt.get<FavoriteCubit>(),
        child: Scaffold(
          backgroundColor: context.backgroundColor,
          body: SafeArea(child: HomeViewBody()),
        ),
      ),
    );
  }
}
