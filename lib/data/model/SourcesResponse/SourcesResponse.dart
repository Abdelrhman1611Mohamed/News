import 'Sources.dart';
class SourcesResponse {
  String? status;
  String? code;
  String? message;
  List<Source>? sources;
  SourcesResponse({
    this.code,
    this.message,
      this.status, 
      this.sources
  });
  SourcesResponse.fromJson(dynamic json) {
    status = json['status'];
    code=json["code"];
    message=json["message"];
    if (json['sources'] != null) {
      sources = [];
      json['sources'].forEach((v)
      {
        sources?.add(Source.fromJson(v));
      });
    }
  }



}