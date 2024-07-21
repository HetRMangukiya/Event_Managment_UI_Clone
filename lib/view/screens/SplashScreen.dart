import 'package:event_mangment/view/utils/AppRoutes.dart';
import 'package:event_mangment/view/utils/ColorUtils.dart';
import 'package:event_mangment/view/utils/ImageUtils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [ColorUtils.LightBGColor, ColorUtils.DarkBGColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Container(
                height: h * 0.4,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageUtils.ImagePath + ImageUtils.SplashVector,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Text(
                    "Memorable Moments Begin",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: h * 0.028,
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                GestureDetector(
                  onTap: () {
                    Get.offAllNamed(AppRoutes.HOME);
                  },
                  child: Container(
                    height: h * 0.06,
                    width: w * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        h * 0.04,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: h * 0.024,
                          fontWeight: FontWeight.bold,
                          color: ColorUtils.DarkBGColor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 0.06,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
