import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:simple_quran_apps/services/list_surah_services.dart';
import 'package:simple_quran_apps/views/widgets/border_number.dart';

import 'package:simple_quran_apps/controllers/list_surah_controller.dart';
import 'package:simple_quran_apps/models/list_surah_model.dart';

import 'package:get/instance_manager.dart';

class SurahView extends StatefulWidget {
  final Name name;
  SurahView({this.name});

  @override
  _SurahViewState createState() => _SurahViewState();
}

class _SurahViewState extends State<SurahView> {
  final ListSurahController controller = Get.put(ListSurahController());

  // List<ListSurah> listSurah = [];

  // void fetchSurah() async {
  //   var services = await ListSurahServices.fetchSurah();

  //   //convert map to json
  //   var convert = services.toJson();

  //   convert.forEach((key, value) {
  //     listSurah.add(ListSurah.fromJson(convert));
  //   });
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   print(listSurah);
  //   print(listSurah.length);
  //   fetchSurah();
  // }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      itemCount: 1,
      itemBuilder: (context, index) {
        Datum key = controller.listSurah.data.elementAt(index);

        return ListTile(
          onTap: () {
            Get.toNamed('/detail-surah');
          },
          leading: BorderNumber(),
          title: Text(key.name.transliteration.id,
              style: Theme.of(context).textTheme.bodyText2),
          subtitle: Text("Meccan - 7 Verses",
              style: Theme.of(context).textTheme.subtitle1),
          trailing:
              Text("الْحَمْدُ", style: Theme.of(context).textTheme.bodyText1),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider();
      },
    );
  }
}
