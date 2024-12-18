import 'package:flutter/material.dart';
import 'package:news_apps/presentation/screens/home_screen/Taps/category_details/widget/sources_widget/sources_widget.dart';
import '../../../../../data/api/api_manger/ApiManger.dart';
import '../../../../../data/model/SourcesResponse/Sources.dart';
import '../../../../../data/model/articels_response/Articles.dart';
import '../../../../../data_model/category_dataModel/category_data_model.dart';

class CategoryDetails extends StatelessWidget {
  CategoryDM categoryDM;
  CategoryDetails({super.key, required this.categoryDM});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ApiManger.getSources(categoryDM.id),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.data?.status == "error" || snapshot.hasError) {
            return Text(snapshot.data?.message ?? "Check Enternet Connection");
           // كده بقوله لو وصلت لي ال server  بس ال dat اللي جايه غلط اعرض ال massage//
           // طيب لو ال massage بي null معني ذللك انه موصلش لي ال server فبقوله اعرض سبب الايرور اللي موجود في ال snapshot
          }
          List<Source>sources = snapshot.data!.sources!;
          return SourcesWidget(sources: sources,);
        });
  }
}
