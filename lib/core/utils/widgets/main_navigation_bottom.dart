import 'package:flutter/material.dart';
import 'package:trent_assessment/core/utils/colors/app_colors.dart';
import 'package:trent_assessment/core/utils/styles/app_style.dart';
import 'package:trent_assessment/feature/home/home_view.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int currentIndex = 0;

  final GlobalKey<NavigatorState> _nestedNavigatorKey =
      GlobalKey<NavigatorState>();

  late final List<Widget> _pages = [
    const HomeScreen(),
    const Center(child: Text('صفحة السلة')),
    const Center(child: Text('صفحة إضافة منتج')),
    const Center(child: Text('صفحة طلباتي')),
    const Center(child: Text('صفحة المزيد')),
  ];

  void _onTabTapped(int index) {
    setState(() => currentIndex = index);
    _nestedNavigatorKey.currentState?.popUntil((route) => route.isFirst);
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: context.backgroundColor,

        body: Navigator(
          key: _nestedNavigatorKey,
          onGenerateRoute: (settings) {
            return MaterialPageRoute(
              builder: (context) =>
                  IndexedStack(index: currentIndex, children: _pages),
            );
          },
        ),

        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          width: 56,
          height: 56,
          margin: const EdgeInsets.only(top: 10),
          child: FloatingActionButton(
            onPressed: () => _onTabTapped(2),
            backgroundColor: AppColors.primary,
            elevation: 3,
            shape: const CircleBorder(),
            child: const Icon(
              Icons.add_rounded,
              size: 32,
              color: AppColors.whiteColor,
            ),
          ),
        ),

        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 8.0,
          color: context.surfaceColor,
          elevation: 10,
          clipBehavior: Clip.antiAlias,
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavItem(
                  icon: Icons.home_rounded,
                  label: 'الرئيسية',
                  index: 0,
                ),
                _buildNavItem(
                  icon: Icons.shopping_basket_outlined,
                  label: 'السلة',
                  index: 1,
                ),
                const SizedBox(width: 48),
                _buildNavItem(
                  icon: Icons.local_offer_outlined,
                  label: 'طلباتي',
                  index: 3,
                ),
                _buildNavItem(
                  icon: Icons.grid_view_rounded,
                  label: 'المزيد',
                  index: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required int index,
  }) {
    final bool isActive = currentIndex == index;
    final color = isActive ? AppColors.primary : AppColors.greyColor;

    return InkWell(
      onTap: () => _onTabTapped(index),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 24),
          const SizedBox(height: 3),
          Text(
            label,
            style: AppTextStyle.caption10.copyWith(
              color: color,
              fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}