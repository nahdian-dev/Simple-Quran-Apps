import 'package:get/get.dart';
import 'package:simple_quran_apps/models/specific_surah_model.dart';
import 'package:simple_quran_apps/services/specific_surah_services.dart';

class SpecificSurahController extends GetxController {
  var specificSurah = Future.value(SpecificSurah()).obs;

  @override
  void onInit() {
    super.onInit();
    fetchSurah();
  }

  void fetchSurah() async {
    specificSurah.value = SpecificSurahServices.fetchSurah("12");
  }
}
