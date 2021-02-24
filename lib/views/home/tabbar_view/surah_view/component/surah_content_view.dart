import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:simple_quran_apps/views/widgets/border_number.dart';

class SurahContentView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: BorderNumber(),
      title: Text("Al-Fatiah",
          style:
              Theme.of(context).textTheme.apply(fontSizeDelta: -2).bodyText2),
      subtitle: Text("Meccan . 7 Verses",
          style:
              Theme.of(context).textTheme.apply(fontSizeDelta: -2).subtitle1),
      onTap: () {
        Get.toNamed('/detail-surah');
      },
    );
  }
}
