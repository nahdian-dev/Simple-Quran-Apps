import 'package:flutter/material.dart';
import 'package:simple_quran_apps/configuration/typography.dart';
import 'package:simple_quran_apps/views/home/home.dart';

class OnBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Title
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Quran App",
                  style: Theme.of(context)
                      .textTheme
                      .apply(fontSizeDelta: 10)
                      .bodyText1,
                ),
                SizedBox(height: 10),
                Text(
                  "Learn Quran and",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Text(
                  "Recite once evryday",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ],
            ),

            //Spacing
            SizedBox(height: 20),

            //Image
            Stack(
              children: [
                Container(
                  color: Colors.cyan,
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: Image.asset(
                    'assets/images/onboard_image.png',
                    fit: BoxFit.contain,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Container(
                    width: 200,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: greenColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text("Get Started"),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
