import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_apps/presentation/screens/home_screen/Taps/categoris_taps/widget/category_widget.dart';
import '../../../../../core/utils/app_stayel/app_stayl.dart';
import '../../../../../data_model/category_dataModel/category_data_model.dart';

typedef OnCategoryItemClciked = void Function(CategoryDM);
class CategorisTaps extends StatelessWidget {
  OnCategoryItemClciked onCategoryItemClciked;
  CategorisTaps({super.key, required this.onCategoryItemClciked});
  // List<CategoryDM> categoriesList = CategoryDM.getAllCategories;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Text(
              "Pick your category \n of interest",
              style: AppStyale.pickCategorg,
            ),
            Expanded(
                child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20.h,
                  crossAxisSpacing: 25.w),
              itemBuilder: (context, index) =>
                  InkWell(
                  onTap: ()
                  {
                    onCategoryItemClciked(CategoryDM.getAllCategories[index]);
                  },
                  child:
                  CategoryWidget
                    (
                    index: index,
                    categoryDM:CategoryDM.getAllCategories[index],
                  )),
              // كده انا بعت  ال object و index لي CategoryWidget
              itemCount:CategoryDM.getAllCategories.length,
            ))
          ],
        ),
      ),
    );
  }
}
