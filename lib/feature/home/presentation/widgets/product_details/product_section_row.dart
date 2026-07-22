import 'package:flutter/material.dart';
import 'package:trent_assessment/feature/home/data/models/product_model.dart';
import 'package:trent_assessment/feature/home/presentation/widgets/product_card.dart';
import 'package:trent_assessment/feature/home/presentation/widgets/see_all_button.dart';

class ProductsRowSection extends StatelessWidget {
  final String title;
  final List<ProductModel> products;
  final VoidCallback? onSeeAllTap;

  const ProductsRowSection({
    required this.title,
    required this.products,
    this.onSeeAllTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SeeALLButton(title: title, onSeeAllTap: onSeeAllTap),
        const SizedBox(height: 10),
        SizedBox(
          height: 235,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: products.length,
            itemBuilder: (context, index) =>
                ProductCard(product: products[index]),
          ),
        ),
      ],
    );
  }
}
