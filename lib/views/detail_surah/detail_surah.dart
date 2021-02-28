import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'component/content_detail_surah.dart';
import 'component/header_detail_surah.dart';

class DetailSurah extends StatelessWidget {
  final arguments = Get.arguments;

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
              background: HeaderDetailSurah(arguments: arguments),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              ContentDetailSurah(arguments: arguments),
            ]),
          ),
        ],
      ),
    );
  }
}
