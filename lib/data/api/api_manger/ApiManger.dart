import 'dart:convert';
import 'package:http/http.dart'as http;
import '../../model/SourcesResponse/SourcesResponse.dart';
import '../../model/articels_response/ArticelsResponse.dart';
//newsapi.org/v2/everything?apiKey=0e30f2884d9c4e93b28e4fcc61eb4e15&sources=abc-news
class ApiManger
{
  static const String _baseUrl="newsapi.org";
  static const String _sourcesEndPoint= "/v2/top-headlines/sources";
  static const String _articlesEndPoint="/v2/everything";
  static const String _apiKey="294c9977835b4e75857c5ccff210146a";

  static Future<SourcesResponse>getSources(String categoryId)async
  {
  Uri uri=Uri.http(_baseUrl,_sourcesEndPoint,
  {
    "apiKey":_apiKey,
    "category":categoryId
  }
  );

 http.Response serverResponse= await http.get(uri);
 // نفذ الطلب
  // serverResponse.body
  // keda al data gat web2t fe al body 3la he2t string lazm a7welha ela json
  var json= jsonDecode(serverResponse.body);
  // jeonDecode bethawel mn string ela json
  //  jsonEncode bethawel ma json ela  string
  SourcesResponse sourcesResponse =SourcesResponse.fromJson(json);
  return sourcesResponse;
}

 static Future<ArticelsResponse>getArticels(String sourceId)async
 {
   Uri url =Uri.http(_baseUrl,_articlesEndPoint,
    {

      "apiKey":_apiKey,
      "sources":sourceId,
    }
);
  http.Response serverRespons= await http.get(url);
  var json=jsonDecode(serverRespons.body);
   ArticelsResponse articelsResponse =ArticelsResponse.fromJson(json);
return articelsResponse;
 }

  static Future<ArticelsResponse>Searchresult(String text)async
  {
    Uri url =Uri.http(_baseUrl,_articlesEndPoint,
        {
          "apiKey":_apiKey,
          "q":text
        }
    );
    http.Response serverRespons= await http.get(url);
    var json=jsonDecode(serverRespons.body);
    ArticelsResponse articelsResponse =ArticelsResponse.fromJson(json);
    return articelsResponse;
  }

}


//
// static Future<ArticelsResponse>getArticels(String? sourceId,String? searhText)
// {
// Uri url =Uri.http(_baseUrl,_articlesEndPoint,
//     {
//       "apiKey":_apiKey,
//       "sources":sourceId,
//       "q":searhText
//     }
// );
// http.get(url);
// }