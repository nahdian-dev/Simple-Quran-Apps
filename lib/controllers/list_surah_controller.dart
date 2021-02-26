import 'package:get/get.dart';

import '../models/list_surah_model.dart';
import '../services/list_surah_services.dart';

class ListSurahController extends GetxController {
  ListSurah listSurah = ListSurah();

  void fetchSurah() async {
    var services = await ListSurahServices.fetchSurah();

    if (services != null) {
      listSurah = services;
    }
  }
}
