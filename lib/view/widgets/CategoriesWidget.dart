import 'package:event_mangment/view/utils/ColorUtils.dart';
import 'package:event_mangment/view/utils/ImageUtils.dart';
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  final double h;
  final double w;

  const CategoriesWidget({required this.h, required this.w});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: h * 0.02,
              ),
            ),
            Text(
              "View All",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: ColorUtils.DarkBGColor,
                fontSize: h * 0.016,
              ),
            ),
          ],
        ),
        SizedBox(height: h * 0.02),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildCategoryItem(h, w, ImageUtils.HomeCategory1, "Turfs\nGround"),
              _buildCategoryItem(h, w, ImageUtils.HomeCategory2, "Wedding\nVenue"),
              _buildCategoryItem(h, w, ImageUtils.HomeCategory3, "Meeting\nVenue"),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryItem(double h, double w, String imagePath, String title) {
    return Container(
      height: h * 0.14,
      width: w * 0.32,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageUtils.ImagePath + imagePath),
          fit: BoxFit.fitHeight,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(h * 0.01),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: h * 0.016,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
