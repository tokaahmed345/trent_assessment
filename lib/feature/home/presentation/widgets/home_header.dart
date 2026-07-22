
import 'package:flutter/material.dart';
import 'package:trent_assessment/core/utils/colors/app_colors.dart';
import 'package:trent_assessment/core/utils/styles/app_style.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Directionality(
            textDirection: TextDirection.ltr,

            child: Row(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.double_arrow_rounded,
                      color: AppColors.primary,
                      size: 22,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      'TRENT',
                      style: AppTextStyle.heading18.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Container(
                    height: 38,
                    decoration: BoxDecoration(
                      color: context.surfaceColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: context.borderColor),
                    ),
                    child: TextField(
                      textAlign:
                          TextAlign.center,
                      textAlignVertical:
                          TextAlignVertical.center, 
                      style: AppTextStyle.caption10.copyWith(
                        color: context.textPrimary,
                      ),
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: 'ابحث حسب العنصر أو الموقع أو الفئة',
                        hintStyle: AppTextStyle.caption10.copyWith(
                          color: context.textSecondary,
                        ),
                        suffixIcon: const Icon(
                          Icons.search,
                          color: AppColors.greyColor,
                          size: 18,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(
                Icons.location_on,
                color: AppColors.blackColor,
                size: 16,
              ),
              const SizedBox(width: 2),
              Text(
                'الموقع',
                style: AppTextStyle.body14Medium.copyWith(
                  color: context.textPrimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Icon(Icons.keyboard_arrow_down, size: 16),
              const Spacer(),
              _buildCircleIcon(Icons.notifications_none),
              const SizedBox(width: 8),
              _buildCircleIcon(Icons.chat_bubble_outline),
            ],
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(
              'الرياض، حي العليا، 23 مبني 19 ..',
              style: AppTextStyle.caption10.copyWith(
                color: context.textSecondary,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'مرحباً بك ',
                      style: AppTextStyle.body14Medium.copyWith(
                        color: context.textPrimary,
                      ),
                    ),
                    TextSpan(
                      text: 'Mad Events',
                      style: AppTextStyle.body14Medium.copyWith(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    'وضع التاجر',
                    style: AppTextStyle.caption10.copyWith(
                      color: context.textPrimary,
                    ),
                  ),
                  Transform.scale(
                    scale: 0.6,
                    child: Switch(
                      value: false,
                      onChanged: (val) {},
                      activeThumbColor: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCircleIcon(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppColors.lightBackground,
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.lightBorder),
      ),
      child: Icon(icon, size: 16, color: AppColors.blackColor),
    );
  }
}
