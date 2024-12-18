import 'package:flutter/material.dart';
import 'package:news_apps/data/model/SourcesResponse/Sources.dart';
import '../../../../../data/api/api_manger/ApiManger.dart';
import '../../../../../data/model/articels_response/Articles.dart';
import 'article_Item.dart';
class ArticelsListWidget extends StatelessWidget {
  ArticelsListWidget({super.key, required this.source});
  Source source;
  @override
  Widget build(BuildContext context) {
    return
      FutureBuilder(
          future: ApiManger.getArticels(source.id!),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.data?.status == "error" || snapshot.hasError) {
              return Text(
                  snapshot.data?.message ?? "Check Enternet Connection");
// كده بقوله لو وصلت لي ال server  بس ال dat اللي جايه غلط اعرض ال massage
// طيب لو ال massage بي null معني ذللك انه موصلش لي ال server فبقوله اعرض سبب الايرور اللي موجود في ال snapshot
            }
            List<Articles> articles = snapshot.data!.articles!;
            return Expanded(
              child: ListView.builder(itemBuilder: (context, index) =>
                  ArticleItem(article: articles[index]),
                itemCount: articles.length,),
            );
          });
  }
}
