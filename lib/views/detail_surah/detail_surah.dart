import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:simple_quran_apps/controllers/specific_surah_controller.dart';
import 'package:simple_quran_apps/models/specific_surah_model.dart';

import 'component/content_detail_surah.dart';
import 'component/header_detail_surah.dart';

class DetailSurah extends StatelessWidget {
  final SpecificSurahController controller = Get.put(SpecificSurahController());
  final arguments = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("Al-Fatiah", style: Theme.of(context).textTheme.bodyText1),
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
              FutureBuilder<SpecificSurah>(
                  future: controller.specificSurah.value,
                  builder: (context, snap) {
                    if (snap.hasData) {
                      return Column(
                        children: [
                          for (int i = 0; i < snap.data.data.verses.length; i++)
                            ContentDetailSurah(
                              data: snap.data.data,
                              index: i,
                            )
                        ],
                      );
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  }),
            ]),
          ),
        ],
      ),
    );
  }
}
