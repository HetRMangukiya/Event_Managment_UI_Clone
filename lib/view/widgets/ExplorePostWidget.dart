import 'package:event_mangment/view/utils/ImageUtils.dart';
import 'package:flutter/material.dart';

class ExplorePostWidget extends StatelessWidget {
  final double h;
  final double w;

  const ExplorePostWidget({required this.h, required this.w});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Explore Post",
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
              _buildPostItem(
                h, w,
                ImageUtils.HomePostImage1,
                "Coolulu Kormangalaturf park",
                "Krish Pandya",
                "10 Month Ago",
              ),
              SizedBox(width: w * 0.04),
              _buildPostItem(
                h, w,
                ImageUtils.HomePostImage2,
                "Shangri Lal Studio",
                "Krish Pandya",
                "10 Month Ago",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPostItem(double h, double w, String imagePath, String title, String userName, String postDate) {
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
                "See Details",
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
        Row(
          children: [
            CircleAvatar(
              minRadius: h * 0.014,
              backgroundImage: AssetImage(ImageUtils.ImagePath + ImageUtils.HomePostProfile),
            ),
            SizedBox(width: w * 0.02),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: h * 0.012,
                  ),
                ),
                Text(
                  postDate,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: h * 0.01,
                  ),
                ),
              ],
            ),
            SizedBox(width: w * 0.4),
            Container(
              height: h * 0.03,
              width: w * 0.12,
              padding: EdgeInsets.all(h * 0.004),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(h * 0.006),
                border: Border.all(color: Colors.black, width: 0.5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite_border_rounded, color: Colors.black, size: h * 0.02),
                  Text(
                    "200",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: h * 0.01,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
