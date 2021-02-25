import 'dart:math';

import 'package:flutter/material.dart';
import 'package:simple_quran_apps/configuration/typography.dart';

class BorderNumber extends StatelessWidget {
  const BorderNumber({
    Key key,
  }) : super(key: key);

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
            child: Text('1',
                style: Theme.of(context)
                    .textTheme
                    .apply(fontSizeDelta: -2)
                    .bodyText2),
          ),
        ),
      ],
    );
  }
}
