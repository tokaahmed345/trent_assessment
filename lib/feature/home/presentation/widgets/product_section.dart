
// Custom Section for Products Horizontal
import 'package:flutter/material.dart';
import 'package:trent_assessment/core/utils/colors/app_colors.dart';
import 'package:trent_assessment/core/utils/styles/app_style.dart';
import 'package:trent_assessment/feature/home/data/models/product_model.dart';
import 'package:trent_assessment/feature/home/presentation/widgets/product_card.dart';
import 'package:trent_assessment/feature/home/presentation/widgets/see_all_button.dart';

class ProductSection extends StatelessWidget {
  final String title;
  final List<ProductModel> products;

  const ProductSection({
    super.key,
    required this.title,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppTextStyle.heading18.copyWith(
                  color: context.textPrimary,
                ),
              ),
     
              SeeALLButton(title: "عرض الكل ",)
            ],
          ),
        ),
        SizedBox(
          height: 235,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ProductCard(product: products[index]);
            },
          ),
        ),
      ],
    );
  }
}