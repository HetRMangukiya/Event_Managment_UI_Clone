import 'package:event_mangment/view/utils/ImageUtils.dart';
import 'package:event_mangment/view/widgets/CategoriesWidget.dart';
import 'package:event_mangment/view/widgets/ExploreEventWidget.dart';
import 'package:event_mangment/view/widgets/ExplorePostWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(
                ImageUtils.ImagePath + ImageUtils.ProfileVector,
              ),
            ),
            Text(
              "Event",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notification_important_rounded,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: h * 0.86,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(h * 0.06),
                topRight: Radius.circular(h * 0.06),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: Offset(0, -5),
                )
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(h * 0.04),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CategoriesWidget(h: h, w: w),
                    SizedBox(height: h * 0.02),
                    ExplorePostWidget(h: h, w: w),
                    SizedBox(height: h * 0.02),
                    ExploreEventWidget(h: h, w: w),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
