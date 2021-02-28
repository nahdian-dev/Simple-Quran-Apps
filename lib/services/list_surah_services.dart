import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:simple_quran_apps/models/list_surah_model.dart';

class ListSurahServices {
  static var client = http.Client();

  static Future<ListSurah> fetchSurah() async {
    var response = await client.get("https://api.quran.sutanlab.id/surah");
    var surahModel;

    try {
      if (response.statusCode == 200) {
        var jsonString = response.body;

        var jsonModel = json.decode(jsonString);

        surahModel = ListSurah.fromJson(jsonModel);
      }
    } catch (e) {
      throw Exception(e);
    }

    return surahModel;
  }
}
