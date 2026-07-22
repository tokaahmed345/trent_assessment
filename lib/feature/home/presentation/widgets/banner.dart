
import 'package:flutter/material.dart';
import 'package:trent_assessment/core/utils/assets/app_assets.dart';
import 'package:trent_assessment/core/utils/colors/app_colors.dart';

class HomeBannerWidget extends StatelessWidget {
  const HomeBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primaryLight,
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
          image: AssetImage(AppAssets.logo),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

