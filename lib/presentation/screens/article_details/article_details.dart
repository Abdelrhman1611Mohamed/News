import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_apps/data/model/articels_response/Articles.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/utils/assets_manger/assets_manger.dart';
class ArticleDetails extends StatelessWidget {
  ArticleDetails({super.key});
  @override
  Widget build(BuildContext context) {
    Articles article = ModalRoute.of(context)?.settings.arguments as Articles;
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(image: AssetImage(AssetsManager.routeImage))),
      child: Scaffold(
        appBar: AppBar(
          title: Text(article.title!),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(5.r),
                    child: Image.network(article.urlToImage!)),
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
                ),
                const SizedBox(height: 4,),
                Text(
                  article.content!,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 13.sp,
                      color: const Color(0XFF42505C)),
                ),
                const SizedBox(height: 4,),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: TextButton(
                      onPressed: () async {
                        final Uri url = Uri.parse(article.url!);
                          await launchUrl(url, mode: LaunchMode.externalApplication);
                      }, child: Text(article.url!,style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}
