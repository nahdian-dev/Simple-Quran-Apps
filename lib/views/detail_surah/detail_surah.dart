import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:simple_quran_apps/controllers/specific_surah_controller.dart';
import 'package:simple_quran_apps/models/specific_surah_model.dart';

import 'component/content_detail_surah.dart';
import 'component/header_detail_surah.dart';

class DetailSurah extends StatefulWidget {
  @override
  _DetailSurahState createState() => _DetailSurahState();
}

class _DetailSurahState extends State<DetailSurah> {
  final controller = Get.put(SpecificSurahController());
  final arguments = Get.arguments;

  Future<SpecificSurah> specificSurah;

  @override
  void initState() {
    super.initState();
    specificSurah =
        SpecificSurahController.fetchSurah(arguments.number.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
            text: TextSpan(
                text: arguments.name.transliteration.id,
                style: Theme.of(context).textTheme.bodyText1)),
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
              Obx(() => FutureBuilder<SpecificSurah>(
                  future: controller.specifSurah,
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
                  }))
            ]),
          ),
        ],
      ),
    );
  }
}
