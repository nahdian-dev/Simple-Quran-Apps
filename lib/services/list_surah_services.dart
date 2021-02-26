import 'package:http/http.dart' as http;
import '../models/list_surah_model.dart';

class ListSurahServices {
  static var client = http.Client();

  static Future<ListSurah> fetchSurah() async {
    var response = await client.get("https://api.quran.sutanlab.id/surah");

    if (response.statusCode == 200) {
      var fetchResult = (response.body);
      return listSurahFromJson(fetchResult);
    } else {
      return null;
    }
  }
}
