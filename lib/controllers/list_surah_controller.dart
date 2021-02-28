import 'package:get/get.dart';
import 'package:simple_quran_apps/models/list_surah_model.dart';
import 'package:simple_quran_apps/services/list_surah_services.dart';

class ListSurahController extends GetxController {
  var listSurah = Future.value(ListSurah()).obs;

  @override
  void onInit() {
    super.onInit();
    getListSurah();
  }

  void getListSurah() async {
    listSurah.value = ListSurahServices.fetchSurah();
  }
}
