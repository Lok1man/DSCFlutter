// To parse this JSON data, do
//
//    final news = newsFromJson(jsonString);

import 'dart:convert';

List<NewsResponse> newsResponseFromJson(String str) => List<NewsResponse>.from(json.decode(str).map((x) => NewsResponse.fromJson(x)));

String newsResponseToJson(List<NewsResponse> data) => json.encode(List<dynamic>.from(data.map((x) =>x.toJson())));

class NewsResponse {
  NewsResponse({
    this.code,
    this.message,
    this.data,
  });

  int code;
  String message;
  List<News> data;

  factory News.fromJson(Map<String, dynamic>json) =>News(
    code: json["code"],
    message: json["message"],
    data: List<News>.from(json["data"].map((x) => News.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class News {
  News({
    this.contentId,
    this.channelName,
    this.published,
    this.title,
    this.thumbnail,
    this.url,
    this.author,
    this.summary,
  });

  String.contentId;
  String.channelName;
  String.published;
  String.title;
  String.thumbnail;
  String.url;
  String.author;
  String.summary;

  factory News.fromJson(Map<String, dynamic> json) => News(
    contentId: json["content_id"],
    channelName: json["channel_name"],
    published: json["published"],
    title: json["title"],
    thumbnail: json["thumbnail"],
    url: json["url"],
    author: json["author"],
    summary: json["summary"],
  );

  Map<String, dynamic> toJson() => {
    "content_id": contentId,
    "channel_name": channelName,
    "published": published,
    "title": title,
    "channelName": channelName,
  };
}