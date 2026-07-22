import 'package:flutter/material.dart';
import 'package:trent_assessment/core/utils/colors/app_colors.dart';
import 'package:trent_assessment/core/utils/service/mock_data.dart';
import 'package:trent_assessment/feature/home/data/models/product_model.dart';
import 'package:trent_assessment/feature/home/presentation/widgets/product_details/product_about_section.dart';
import 'package:trent_assessment/feature/home/presentation/widgets/product_details/product_bottom_bar.dart';
import 'package:trent_assessment/feature/home/presentation/widgets/product_details/product_image_header.dart';
import 'package:trent_assessment/feature/home/presentation/widgets/product_details/product_location_section.dart';
import 'package:trent_assessment/feature/home/presentation/widgets/product_details/product_review.dart';
import 'package:trent_assessment/feature/home/presentation/widgets/product_details/product_section_row.dart';
import 'package:trent_assessment/feature/home/presentation/widgets/product_details/product_title_rate.dart';
import 'package:trent_assessment/feature/home/presentation/widgets/product_details/prooduct_price_row.dart';

class ProductDetailsView extends StatelessWidget {
  final ProductModel product;
  final List<ProductModel> otherProducts;
  final List<ProductModel> similarProducts;

  const ProductDetailsView({
    super.key,
    required this.product,
    this.otherProducts = const [],
    this.similarProducts = const [],
  });

  @override
  Widget build(BuildContext context) {
    final images = [product.imageUrl];
    final reviews = HomeMockData.chairReviews;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: context.backgroundColor,
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: ProductImageHeader(
                productId: product.id,
                initialIsFavorite: product.isFavorite,
                images: images,
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductTitleRating(
                      product: product,
                      reviewsCount: reviews.length,
                    ),
                    const SizedBox(height: 8),
                    ProductPriceRow(product: product),
                    _divider(),
                    ProductAboutSection(description: product.description),
                    _divider(),
                    ProductLocationSection(locationName: product.location),
                    _divider(),
                    ProductReviewsSection(reviews: reviews),
                    if (otherProducts.isNotEmpty) ...[
                      _divider(),
                      ProductsRowSection(
                        title: 'منتجات أخرى للتأجير',
                        products: otherProducts,
                      ),
                    ],
                    if (similarProducts.isNotEmpty) ...[
                      _divider(),
                      ProductsRowSection(
                        title: 'منتجات مشابهة',
                        products: similarProducts,
                      ),
                    ],
                    const SizedBox(height: 90),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: ProductBottomBar(
          product: product,
          onBookNowTap: () {
          },
        ),
      ),
    );
  }

  Widget _divider() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Divider(height: 1),
    );
  }
}
