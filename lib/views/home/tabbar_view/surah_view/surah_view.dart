import 'package:flutter/material.dart';
import 'package:simple_quran_apps/views/home/tabbar_view/surah_view/component/surah_content_view.dart';

class SurahView extends StatelessWidget {
  looping() {
    for (var i = 0; i < 100; i++) {
      return SurahContentView();
    }
  }

  @override
  Widget build(BuildContext context) {
    return looping();
  }
}
