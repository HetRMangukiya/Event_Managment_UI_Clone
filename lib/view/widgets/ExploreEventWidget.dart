import 'package:event_mangment/view/utils/ImageUtils.dart';
import 'package:flutter/material.dart';

class ExploreEventWidget extends StatelessWidget {
  final double h;
  final double w;

  const ExploreEventWidget({required this.h, required this.w});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Explore Event",
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
                color: Colors.blue,
                fontSize: h * 0.016,
              ),
            ),
          ],
        ),
        SizedBox(height: h * 0.02),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildEventItem(
                h, w,
                ImageUtils.HomeEvent,
                "Turf Warz: Soccer Madness",
                "Soccer Park, City Center",
                "12-15 Sep 2023",
              ),
              SizedBox(width: w * 0.04),
              _buildEventItem(
                h, w,
                ImageUtils.HomeEvent2,
                "Wedding Expo Extravaganza",
                "Grand Wedding Hall",
                "22-24 Sep 2023",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildEventItem(double h, double w, String imagePath, String title, String location, String date) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: h * 0.2,
          width: w * 0.76,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageUtils.ImagePath + imagePath),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.4),
            ),
            child: Center(
              child: Text(
                "Join Event",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: h * 0.026,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: h * 0.01),
        Text(
          title,
          style: TextStyle(
            fontSize: h * 0.018,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: h * 0.01),
        Text(
          location,
          style: TextStyle(
            fontSize: h * 0.014,
            color: Colors.grey,
          ),
        ),
        Text(
          date,
          style: TextStyle(
            fontSize: h * 0.012,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
