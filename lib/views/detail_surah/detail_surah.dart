import 'package:flutter/material.dart';

import 'component/content_detail_surah.dart';
import 'component/header_detail_surah.dart';

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
          SliverList(
            delegate: SliverChildListDelegate([
              ContentDetailSurah(),
              ContentDetailSurah(),
              ContentDetailSurah(),
              ContentDetailSurah(),
              ContentDetailSurah(),
            ]),
          ),
        ],
      ),
    );
  }
}
