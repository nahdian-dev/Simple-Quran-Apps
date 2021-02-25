import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:simple_quran_apps/views/widgets/border_number.dart';

class SurahView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Get.toNamed('/detail-surah');
          },
          leading: BorderNumber(),
          title:
              Text("Al-Fatiah", style: Theme.of(context).textTheme.bodyText2),
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
