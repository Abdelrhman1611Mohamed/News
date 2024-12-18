import 'Articles.dart';
class ArticelsResponse {
  String? status;
  String? code;
  String? message;
  num? totalResults;
  List<Articles>? articles;
  ArticelsResponse({
    this.code,
    this.message,
    this.status,
    this.totalResults,
    this.articles,
  });

  ArticelsResponse.fromJson(dynamic json) {
    status = json['status'];
    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      articles = [];
      json['articles'].forEach((v) {
        articles?.add(Articles.fromJson(v));
      });
    }
  }


}