// To parse this JSON data, do
//
//     final listSurah = listSurahFromJson(jsonString);

import 'dart:convert';

ListSurah listSurahFromJson(String str) => ListSurah.fromJson(json.decode(str));

String listSurahToJson(ListSurah data) => json.encode(data.toJson());

class ListSurah {
  ListSurah({
    this.code,
    this.status,
    this.message,
    this.data,
  });

  int code;
  String status;
  String message;
  List<Datum> data;

  factory ListSurah.fromJson(Map<String, dynamic> json) => ListSurah(
        code: json["code"],
        status: json["status"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    this.number,
    this.sequence,
    this.numberOfVerses,
    this.name,
    this.revelation,
    this.tafsir,
  });

  int number;
  int sequence;
  int numberOfVerses;
  Name name;
  Revelation revelation;
  Tafsir tafsir;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        number: json["number"],
        sequence: json["sequence"],
        numberOfVerses: json["numberOfVerses"],
        name: Name.fromJson(json["name"]),
        revelation: Revelation.fromJson(json["revelation"]),
        tafsir: Tafsir.fromJson(json["tafsir"]),
      );

  Map<String, dynamic> toJson() => {
        "number": number,
        "sequence": sequence,
        "numberOfVerses": numberOfVerses,
        "name": name.toJson(),
        "revelation": revelation.toJson(),
        "tafsir": tafsir.toJson(),
      };
}

class Name {
  Name({
    this.short,
    this.long,
    this.transliteration,
    this.translation,
  });

  String short;
  String long;
  Translation transliteration;
  Translation translation;

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        short: json["short"],
        long: json["long"],
        transliteration: Translation.fromJson(json["transliteration"]),
        translation: Translation.fromJson(json["translation"]),
      );

  Map<String, dynamic> toJson() => {
        "short": short,
        "long": long,
        "transliteration": transliteration.toJson(),
        "translation": translation.toJson(),
      };
}

class Translation {
  Translation({
    this.en,
    this.id,
  });

  String en;
  String id;

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
        en: json["en"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
        "id": id,
      };
}

class Revelation {
  Revelation({
    this.arab,
    this.en,
    this.id,
  });

  Arab arab;
  En en;
  Id id;

  factory Revelation.fromJson(Map<String, dynamic> json) => Revelation(
        arab: arabValues.map[json["arab"]],
        en: enValues.map[json["en"]],
        id: idValues.map[json["id"]],
      );

  Map<String, dynamic> toJson() => {
        "arab": arabValues.reverse[arab],
        "en": enValues.reverse[en],
        "id": idValues.reverse[id],
      };
}

enum Arab { EMPTY, ARAB }

final arabValues = EnumValues({"مدينة": Arab.ARAB, "مكة": Arab.EMPTY});

enum En { MECCAN, MEDINAN }

final enValues = EnumValues({"Meccan": En.MECCAN, "Medinan": En.MEDINAN});

enum Id { MAKKIYYAH, MADANIYYAH }

final idValues =
    EnumValues({"Madaniyyah": Id.MADANIYYAH, "Makkiyyah": Id.MAKKIYYAH});

class Tafsir {
  Tafsir({
    this.id,
  });

  String id;

  factory Tafsir.fromJson(Map<String, dynamic> json) => Tafsir(
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
