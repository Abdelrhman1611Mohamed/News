import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_apps/presentation/screens/home_screen/Taps/category_details/widget/sources_widget/sourceItemWidget.dart';
import '../../../../../../../data/model/SourcesResponse/Sources.dart';
import '../../../news/articels_List_widget.dart';
class SourcesWidget extends StatefulWidget {
  List<Source> sources;
  SourcesWidget({super.key, required this.sources});
  @override
  State<SourcesWidget> createState() => _SourcesWidgetState();
}
class _SourcesWidgetState extends State<SourcesWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length: widget.sources.length,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: TabBar(
                tabAlignment: TabAlignment.start,
                labelPadding: REdgeInsets.all(8),
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {});
                },
                dividerColor: Colors.transparent,
                indicatorColor: Colors.transparent,
                isScrollable: true,
                tabs: widget.sources.map((source) {
                  return Sourceitemwidget(
                    source: source,
                    isSelected: widget.sources.indexOf(source) == selectedIndex,
                  );
                }).toList()),
          ),
        ),
        ArticelsListWidget(source: widget.sources[selectedIndex])
      ],
    );
  }
}
