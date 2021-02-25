import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:simple_quran_apps/configuration/typography.dart';

class OnBoardImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      width: 260,
      // color: Colors.blue,
      child: Stack(
        children: [
          //Image
          Container(
            height: 280,
            margin: EdgeInsets.only(right: 20),
            child: Image.asset(
              'assets/images/onboard_image.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),

          // Button
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: () {
                Get.toNamed('/home');
              },
              child: Container(
                height: 40,
                width: 140,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: greenColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text("Get Started"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
