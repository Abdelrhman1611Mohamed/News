import 'package:flutter/material.dart';
import 'package:news_apps/data/model/SourcesResponse/Sources.dart';
import 'package:news_apps/data/model/articels_response/Articles.dart';

import 'Searchresult/Search_result.dart';
class customSearch extends SearchDelegate
{
  List<String>test=[];
  // List<Articles>? articlesList=[];
  // void articles  (List<Articles>?articles) {
  //   articlesList=articles;
  // }
  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.white),
      ),
    );
  }
  // customSearch({required this.sources});
  @override
  List<Widget>? buildActions(BuildContext context) {
    return
      [
        IconButton(onPressed: ()
        {
          query=""; // هي شبه ال textControal
        }
        , icon: const Icon(Icons.close))
      ];
  }
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: () {
      Navigator.pop(context);

    }, icon: const Icon(Icons.arrow_back));

  }
  @override
  Widget buildResults(BuildContext context) // نتيجة البحث
  {
    return SearchResult(text: query);
  }
  @override
  Widget buildSuggestions(BuildContext context) // الاقتراحات
  {
    if (query.isEmpty)
      {
        return ListView.builder(itemBuilder: (context, index) =>
            InkWell(
              onTap: (){
                showResults(context);
              },
              child:  Card(
                        child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("${test[index]}"),
                        ),
                      ),
            ),itemCount: test.length,);
      }
    else
      {
        List? filterist=test.where((element)=>element.contains(query)).toList();
        return ListView.builder(itemBuilder: (context, index) =>
            InkWell(
               onTap: (){showResults(context);},
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("${filterist[index]}"),
                  ),
                )),itemCount: filterist.length,);
      }
  }

}