import 'package:flutter/material.dart';
import 'component/onboard_image.dart';

class OnBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Title
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Quran App",
                      style: Theme.of(context)
                          .textTheme
                          .apply(fontSizeDelta: 10)
                          .bodyText1),
                  SizedBox(height: 10),
                  Text("Learn Quran and",
                      style: Theme.of(context).textTheme.subtitle1),
                  Text("Recite once evryday",
                      style: Theme.of(context).textTheme.subtitle1),
                ],
              ),
              SizedBox(height: 20),

              //Image
              OnBoardImage(),
            ],
          ),
        ),
      ),
    );
  }
}
