import 'package:flutter/material.dart';
import 'package:trent_assessment/core/utils/service/mock_data.dart';
import 'package:trent_assessment/feature/home/presentation/widgets/banner.dart';
import 'package:trent_assessment/feature/home/presentation/widgets/category_section.dart';
import 'package:trent_assessment/feature/home/presentation/widgets/home_header.dart';
import 'package:trent_assessment/feature/home/presentation/widgets/product_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      // تأثير سكرول ناعم وانسيابي جداً
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const SizedBox(height: 12),
              const HomeHeaderWidget(),
              const HomeBannerWidget(),
              const CategoriesSection(),
              ProductSection(
                title: 'الكراسي',
                products: HomeMockData.chairsList,
              ),
              const SizedBox(height: 8),
              ProductSection(
                title: 'الجلسات',
                products: HomeMockData.seatsList,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}
