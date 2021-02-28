import 'package:flutter/material.dart';
import 'package:simple_quran_apps/configuration/typography.dart';

class ContentDetailSurah extends StatelessWidget {
  final arguments;
  ContentDetailSurah({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  child: Text(arguments.number.toString(),
                      style: Theme.of(context).textTheme.subtitle2),
                ),
              ),
              Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.share_outlined, color: primaryColor),
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
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text("الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ"),
              ),
              Text("[All] praise is [due] to Allah, Lord of the worlds -"),
            ],
          ),
        ),
      ],
    );
  }
}
