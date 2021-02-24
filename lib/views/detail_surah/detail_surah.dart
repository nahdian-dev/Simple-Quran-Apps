import 'package:flutter/material.dart';
import 'package:simple_quran_apps/configuration/typography.dart';

class DetailSurah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Al-Fatiah", style: Theme.of(context).textTheme.bodyText1),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            expandedHeight: MediaQuery.of(context).size.height / 2.4,
            flexibleSpace: FlexibleSpaceBar(
              background: HeaderDetailSurah(),
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderDetailSurah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(0.6),
            blurRadius: 16,
            offset: Offset(0, 25),
            spreadRadius: -20,
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.purpleAccent, primaryColor.withOpacity(0.9)],
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Stack(
          children: [
            //Images
            Positioned(
              right: -60,
              bottom: -50,
              child: Opacity(
                opacity: 0.2,
                child: Image.asset(
                  'assets/images/quran_icon.png',
                  height: 240,
                ),
              ),
            ),

            //Content

            //Bismillah icon
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Image.asset(
                    'assets/images/bismillah.png',
                    height: 40,
                    color: whiteColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
