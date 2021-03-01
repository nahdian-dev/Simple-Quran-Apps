import 'package:get/get.dart';
import 'package:simple_quran_apps/models/specific_surah_model.dart';
import 'package:simple_quran_apps/services/specific_surah_services.dart';
// import 'package:simple_quran_apps/views/detail_surah/detail_surah.dart';

class SpecificSurahController extends GetxController {
  static var _specificSurah = Future.value(SpecificSurah()).obs;
  Future<SpecificSurah> get specifSurah => _specificSurah.value;

  static Future<SpecificSurah> fetchSurah(String page) async {
    var services = SpecificSurahServices.fetchSurah(page);
    _specificSurah.value = services;
    return _specificSurah.value;
  }
}
