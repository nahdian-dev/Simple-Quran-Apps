import 'dart:math';

import 'package:flutter/material.dart';
import 'package:simple_quran_apps/configuration/typography.dart';

class BorderNumber extends StatelessWidget {
  final int number;
  BorderNumber({this.number});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            border: Border.all(color: primaryColor, width: 3),
          ),
        ),
        Transform.rotate(
          angle: pi / 1.3,
          child: Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              border: Border.all(color: primaryColor, width: 3),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Text(number.toString(),
                style: Theme.of(context)
                    .textTheme
                    .apply(fontSizeDelta: -4)
                    .bodyText2),
          ),
        ),
      ],
    );
  }
}
