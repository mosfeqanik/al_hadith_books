import 'dart:convert';

class HadithsList {
  final int? status;
  final String? message;
  final Hadiths? hadiths;

  HadithsList({
    this.status,
    this.message,
    this.hadiths,
  });

  factory HadithsList.fromRawJson(String str) =>
      HadithsList.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HadithsList.fromJson(Map<String, dynamic> json) => HadithsList(
        status: json["status"],
        message: json["message"],
        hadiths:
            json["hadiths"] == null ? null : Hadiths.fromJson(json["hadiths"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "hadiths": hadiths?.toJson(),
      };
}

class Hadiths {
  final int? currentPage;
  final List<HadithsData>? data;

  Hadiths({
    this.currentPage,
    this.data,
  });

  factory Hadiths.fromRawJson(String str) => Hadiths.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Hadiths.fromJson(Map<String, dynamic> json) => Hadiths(
        currentPage: json["current_page"],
        data: json["data"] == null
            ? []
            : List<HadithsData>.from(
                json["data"]!.map((x) => HadithsData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class HadithsData {
  final int? id;
  final String? hadithNumber;
  final String? englishNarrator;
  final String? hadithEnglish;
  final String? hadithUrdu;
  final String? urduNarrator;
  final String? hadithArabic;
  final String? headingArabic;
  final String? headingUrdu;
  final String? headingEnglish;
  final String? chapterId;
  final BookSlug? bookSlug;
  final String? volume;
  final Status? status;
  final Book? book;
  final Chapter? chapter;

  HadithsData({
    this.id,
    this.hadithNumber,
    this.englishNarrator,
    this.hadithEnglish,
    this.hadithUrdu,
    this.urduNarrator,
    this.hadithArabic,
    this.headingArabic,
    this.headingUrdu,
    this.headingEnglish,
    this.chapterId,
    this.bookSlug,
    this.volume,
    this.status,
    this.book,
    this.chapter,
  });

  factory HadithsData.fromRawJson(String str) =>
      HadithsData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory HadithsData.fromJson(Map<String, dynamic> json) => HadithsData(
        id: json["id"],
        hadithNumber: json["hadithNumber"],
        englishNarrator: json["englishNarrator"],
        hadithEnglish: json["hadithEnglish"],
        hadithUrdu: json["hadithUrdu"],
        urduNarrator: json["urduNarrator"],
        hadithArabic: json["hadithArabic"],
        headingArabic: json["headingArabic"],
        headingUrdu: json["headingUrdu"],
        headingEnglish: json["headingEnglish"],
        chapterId: json["chapterId"],
        bookSlug: bookSlugValues.map[json["bookSlug"]]!,
        volume: json["volume"],
        status: statusValues.map[json["status"]]!,
        book: json["book"] == null ? null : Book.fromJson(json["book"]),
        chapter:
            json["chapter"] == null ? null : Chapter.fromJson(json["chapter"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "hadithNumber": hadithNumber,
        "englishNarrator": englishNarrator,
        "hadithEnglish": hadithEnglish,
        "hadithUrdu": hadithUrdu,
        "urduNarrator": urduNarrator,
        "hadithArabic": hadithArabic,
        "headingArabic": headingArabic,
        "headingUrdu": headingUrdu,
        "headingEnglish": headingEnglish,
        "chapterId": chapterId,
        "bookSlug": bookSlugValues.reverse[bookSlug],
        "volume": volume,
        "status": statusValues.reverse[status],
        "book": book?.toJson(),
        "chapter": chapter?.toJson(),
      };
}

class Book {
  final int? id;
  final BookName? bookName;
  final WriterName? writerName;
  final dynamic aboutWriter;
  final WriterDeath? writerDeath;
  final BookSlug? bookSlug;

  Book({
    this.id,
    this.bookName,
    this.writerName,
    this.aboutWriter,
    this.writerDeath,
    this.bookSlug,
  });

  factory Book.fromRawJson(String str) => Book.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Book.fromJson(Map<String, dynamic> json) => Book(
        id: json["id"],
        bookName: bookNameValues.map[json["bookName"]]!,
        writerName: writerNameValues.map[json["writerName"]]!,
        aboutWriter: json["aboutWriter"],
        writerDeath: writerDeathValues.map[json["writerDeath"]]!,
        bookSlug: bookSlugValues.map[json["bookSlug"]]!,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "bookName": bookNameValues.reverse[bookName],
        "writerName": writerNameValues.reverse[writerName],
        "aboutWriter": aboutWriter,
        "writerDeath": writerDeathValues.reverse[writerDeath],
        "bookSlug": bookSlugValues.reverse[bookSlug],
      };
}

enum BookName { SAHIH_BUKHARI }

final bookNameValues = EnumValues({"Sahih Bukhari": BookName.SAHIH_BUKHARI});

enum BookSlug { SAHIH_BUKHARI }

final bookSlugValues = EnumValues({"sahih-bukhari": BookSlug.SAHIH_BUKHARI});

enum WriterDeath { THE_256 }

final writerDeathValues = EnumValues({"256 ھ": WriterDeath.THE_256});

enum WriterName { IMAM_BUKHARI }

final writerNameValues = EnumValues({"Imam Bukhari": WriterName.IMAM_BUKHARI});

class Chapter {
  final int? id;
  final String? chapterNumber;
  final ChapterEnglish? chapterEnglish;
  final ChapterUrdu? chapterUrdu;
  final ChapterArabic? chapterArabic;
  final BookSlug? bookSlug;

  Chapter({
    this.id,
    this.chapterNumber,
    this.chapterEnglish,
    this.chapterUrdu,
    this.chapterArabic,
    this.bookSlug,
  });

  factory Chapter.fromRawJson(String str) => Chapter.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Chapter.fromJson(Map<String, dynamic> json) => Chapter(
        id: json["id"],
        chapterNumber: json["chapterNumber"],
        chapterEnglish: chapterEnglishValues.map[json["chapterEnglish"]]!,
        chapterUrdu: chapterUrduValues.map[json["chapterUrdu"]]!,
        chapterArabic: chapterArabicValues.map[json["chapterArabic"]]!,
        bookSlug: bookSlugValues.map[json["bookSlug"]]!,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "chapterNumber": chapterNumber,
        "chapterEnglish": chapterEnglishValues.reverse[chapterEnglish],
        "chapterUrdu": chapterUrduValues.reverse[chapterUrdu],
        "chapterArabic": chapterArabicValues.reverse[chapterArabic],
        "bookSlug": bookSlugValues.reverse[bookSlug],
      };
}

enum ChapterArabic { CHAPTER_ARABIC, EMPTY }

final chapterArabicValues = EnumValues({
  "كتاب الإيمان": ChapterArabic.CHAPTER_ARABIC,
  "كتاب بدء الوحى": ChapterArabic.EMPTY
});

enum ChapterEnglish { BELIEF, REVELATION }

final chapterEnglishValues = EnumValues(
    {"Belief": ChapterEnglish.BELIEF, "Revelation": ChapterEnglish.REVELATION});

enum ChapterUrdu { CHAPTER_URDU, EMPTY }

final chapterUrduValues = EnumValues({
  "ایمان کے بیان میں": ChapterUrdu.CHAPTER_URDU,
  "وحی کے بیان میں": ChapterUrdu.EMPTY
});

enum Status { SAHIH }

final statusValues = EnumValues({"Sahih": Status.SAHIH});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
