
import 'package:flutter/material.dart';
import 'package:trent_assessment/core/utils/colors/app_colors.dart';
import 'package:trent_assessment/core/utils/styles/app_style.dart';
import 'package:trent_assessment/feature/home/data/models/product_model.dart';
import 'package:trent_assessment/feature/home/presentation/widgets/product_details/prooduct_price_row.dart';

class ProductBottomBar extends StatelessWidget {
  final ProductModel product;
  final VoidCallback onBookNowTap;

  const ProductBottomBar({super.key, required this.product, required this.onBookNowTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: context.surfaceColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 12,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            Expanded(child: ProductPriceRow(product: product, fontSize: 18)),
            SizedBox(
              width: 170,
              height: 46,
              child: ElevatedButton(
                onPressed: onBookNowTap,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'احجز الآن',
                  style: AppTextStyle.body14Medium.copyWith(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
