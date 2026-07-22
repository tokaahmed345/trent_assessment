import 'package:flutter/material.dart';
import 'package:trent_assessment/core/utils/colors/app_colors.dart';
import 'package:trent_assessment/core/utils/styles/app_style.dart';

class SeeALLButton extends StatelessWidget {
  final String title;
  final VoidCallback? onSeeAllTap;
  final bool showSeeAll;

  const SeeALLButton({
    required this.title,
    this.onSeeAllTap,
    this.showSeeAll = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyle.heading18.copyWith(
            color: context.textPrimary,
            fontSize: 15,
          ),
        ),
        if (showSeeAll)
          OutlinedButton(
            onPressed: onSeeAllTap ?? () {},
            style: OutlinedButton.styleFrom(
              minimumSize: Size.zero,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              side: const BorderSide(color: AppColors.primary),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            child: Text(
              'عرض الكل',
              style: AppTextStyle.caption10.copyWith(color: AppColors.primary),
            ),
          ),
      ],
    );
  }
}
