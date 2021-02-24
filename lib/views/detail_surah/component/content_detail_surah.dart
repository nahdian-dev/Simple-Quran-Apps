import 'package:flutter/material.dart';
import 'package:simple_quran_apps/configuration/typography.dart';

class ContentDetailSurah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: secondaryColor.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10, 4, 0, 4),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child:
                      Text("1", style: Theme.of(context).textTheme.subtitle2),
                ),
              ),
              Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.share, color: primaryColor),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(Icons.play_arrow_outlined,
                          color: primaryColor, size: 34),
                      onPressed: () {}),
                  IconButton(
                      icon: Icon(Icons.bookmark_border, color: primaryColor),
                      onPressed: () {}),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
