
import 'dart:convert';

List<MediaModel> mediaModelFromJson(String str) => List<MediaModel>.from(json.decode(str).map((x) => MediaModel.fromJson(x)));

String mediaModelToJson(List<MediaModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MediaList {
  List<MediaModel> media;

  MediaList({required this.media});

  factory MediaList.fromJson(List<dynamic> jsonList) {
    List<MediaModel> media = jsonList.map((json) => MediaModel.fromJson(json)).toList();
    return MediaList(media: media);
  }

  List<Map<String, dynamic>> toJson() {
    return media.map((mediaItem) => mediaItem.toJson()).toList();
  }
}

class MediaModel {
    int userId;
    int id;
    String title;
    String body;

    MediaModel({
        required this.userId,
        required this.id,
        required this.title,
        required this.body,
    });

    factory MediaModel.fromJson(Map<String, dynamic> json) => MediaModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
    };
}
