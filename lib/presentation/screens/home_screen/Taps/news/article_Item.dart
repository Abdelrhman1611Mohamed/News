import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_apps/data/model/articels_response/Articles.dart';

import '../../../../../core/utils/routes_manager/routes_manger.dart';

class ArticleItem extends StatelessWidget {
  ArticleItem({super.key, required this.article});
  Articles article;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()
      {
        Navigator.pushNamed(
          arguments: article,
            context, RoutesManager.articleDetails);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5.r),
              child: CachedNetworkImage(
                imageUrl: article.urlToImage??'',
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) =>
                    const Center(child: Icon(Icons.error)),
              ),
            ),
            Text(
              article.source!.name!,
              style: GoogleFonts.poppins(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54),
            ),
            SizedBox(
              height: 3.h,
            ),
            Text(article.description!),
            SizedBox(
              height: 3.h,
            ),
            Text(
              article.publishedAt!,
              textAlign: TextAlign.end,
            )
          ],
        ),
      ),
    );
  }
}