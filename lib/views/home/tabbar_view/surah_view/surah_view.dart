import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:simple_quran_apps/models/list_surah_model.dart';
import 'package:simple_quran_apps/views/widgets/border_number.dart';

import 'package:simple_quran_apps/controllers/list_surah_controller.dart';

import 'package:get/instance_manager.dart';

class SurahView extends StatelessWidget {
  final controller = Get.put(ListSurahController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return FutureBuilder<ListSurah>(
        future: controller.listSurah.value,
        builder: (builder, AsyncSnapshot<ListSurah> snap) {
          if (snap.hasData) {
            return ListView.separated(
              itemCount: snap.data.data.length,
              itemBuilder: (context, index) {
                var dataIndex = snap.data.data[index];
                return ListTile(
                  onTap: () {
                    Get.toNamed('/detail-surah',
                        arguments: dataIndex);
                  },
                  leading: BorderNumber(number: dataIndex.number),
                  title: Text(dataIndex.name.transliteration.id,
                      style: Theme.of(context).textTheme.bodyText2),
                  subtitle: Text(
                      '${dataIndex.revelation.id.toString().replaceAll('Id.', '').capitalize} - ${dataIndex.numberOfVerses} ayat',
                      style: Theme.of(context).textTheme.subtitle1),
                  trailing: Text(dataIndex.name.short,
                      style: Theme.of(context).textTheme.bodyText1),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider();
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      );
    });
  }
}
