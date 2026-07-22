import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:trent_assessment/core/utils/colors/app_colors.dart';
import 'package:trent_assessment/core/utils/styles/app_style.dart';

class ProductLocationSection extends StatelessWidget {
  final String locationName;
  final double latitude;
  final double longitude;

  const ProductLocationSection({super.key, 
    required this.locationName,
    this.latitude = 24.7136,
    this.longitude = 46.6753,
  });

  @override
  Widget build(BuildContext context) {
    final point = LatLng(latitude, longitude);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'مكان المنتج',
          style: AppTextStyle.body14Medium.copyWith(
            color: context.textPrimary,
            fontSize: 15,
          ),
        ),
        const SizedBox(height: 10),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: SizedBox(
            height: 150,
            width: double.infinity,
            child: IgnorePointer(
              child: FlutterMap(
                options: MapOptions(initialCenter: point, initialZoom: 13),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    userAgentPackageName: 'com.trent.trent_assessment',
                  ),
                  MarkerLayer(
                    markers: [
                      Marker(
                        point: point,
                        width: 36,
                        height: 36,
                        child: const Icon(
                          Icons.location_on,
                          size: 34,
                          color: AppColors.favoriteRed,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  size: 14,
                  color: AppColors.greyColor,
                ),
                const SizedBox(width: 4),
                Text(
                  locationName,
                  style: AppTextStyle.body12Medium.copyWith(
                    color: context.textSecondary,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.directions,
                size: 16,
                color: AppColors.primary,
              ),
              label: Text(
                'الاتجاهات',
                style: AppTextStyle.caption10.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}