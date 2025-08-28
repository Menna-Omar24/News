import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/core/utils/app_route.dart';
import 'package:news/core/widgets/custom_svg_wrapper.dart';

import '../../../core/helper/navigation.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_padding.dart';
import '../../../core/utils/app_string.dart';
import '../../../core/utils/app_text_style.dart';
import 'home_view.dart';

class ArticleView extends StatefulWidget {
  static const String id = AppRoute.article;

  const ArticleView({super.key});

  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppAssets.article, fit: BoxFit.cover),
          DraggableScrollableSheet(
            initialChildSize: 0.45,
            minChildSize: 0.3,
            maxChildSize: 0.9,
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(24.r),
                            topLeft: Radius.circular(24.r),
                          ),
                          color: AppColor.greyExtraLight,
                        ),
                        height: 68,
                        width: double.infinity,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 26.0),
                              child: InkWell(
                                onTap: () {
                                  Navigation.goTo(
                                    context,
                                    HomeView(),
                                    type: NavigationType.pushReplacement,
                                  );
                                },
                                child: CustomSvgWrapper(
                                  svgPath: AppAssets.longArrowLeft,
                                ),
                              ),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isSelected = !isSelected;
                                });
                              },
                              child: isSelected
                                  ? CustomSvgWrapper(
                                      svgPath: AppAssets.bookmark,
                                    )
                                  : CustomSvgWrapper(
                                      svgPath: AppAssets.bookMarkOutline,
                                    ),
                            ),
                            const SizedBox(width: 16),
                            Padding(
                              padding: EdgeInsets.only(right: 26.0),
                              child: CustomSvgWrapper(svgPath: AppAssets.share),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: AppPadding.paddingH32,
                        child: Column(
                          children: [
                            Text(
                              "See How the Forest is Helping Our World",
                              style: AppTextStyle.fs32Fw600CBl,
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 14,
                                  backgroundImage: AssetImage(
                                    AppAssets.avatarArticle,
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Harry Harper · Apr 12, 2023",
                                  style: AppTextStyle.fs12Fw400Cg,
                                ),
                              ],
                            ),
                            SizedBox(height: 16),
                            Text(
                              AppString.desArticle,
                              textAlign: TextAlign.justify,
                              style: AppTextStyle.fs16Fw400Cbl,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
