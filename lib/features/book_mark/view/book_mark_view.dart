import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/core/utils/app_assets.dart';
import 'package:news/core/utils/app_padding.dart';
import 'package:news/core/utils/app_string.dart';
import 'package:news/core/widgets/custom_elevated_button.dart';
import 'package:news/features/book_mark/view/widget/custom_book_mark.dart';

import '../../../core/utils/app_color.dart';
import '../../../core/utils/app_text_style.dart';

class BookMarkView extends StatefulWidget {
  static const String id = AppString.bookMark;

  const BookMarkView({super.key});

  @override
  State<BookMarkView> createState() => _BookMarkViewState();
}

class _BookMarkViewState extends State<BookMarkView> {
  late List<Map<String, String>> cardListBookMark;

  @override
  void initState() {
    super.initState();
    cardListBookMark = [
      {
        "title": AppString.workSpace,
        "subtitle": AppString.interior,
        "image": AppAssets.bookmark1,
      },
      {
        "title": AppString.discover,
        "subtitle": AppString.travel,
        "image": AppAssets.bookmark2,
      },
      {
        "title": AppString.exploring,
        "subtitle": AppString.travel,
        "image": AppAssets.bookmark3,
      },
      {
        "title": AppString.destinations,
        "subtitle": AppString.travel,
        "image": AppAssets.bookmark4,
      },
      {
        "title": AppString.remotely,
        "subtitle": AppString.travel,
        "image": AppAssets.bookmark5,
      },
      {
        "title": AppString.authentic,
        "subtitle": AppString.travel,
        "image": AppAssets.bookmark6,
      },
      {
        "title": AppString.seasonal,
        "subtitle": AppString.travel,
        "image": AppAssets.bookmark7,
      },
    ];
  }

  Future<bool?> _showDeleteDialog(
    BuildContext context,
    Map<String, String> item,
  ) {
    return showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        contentPadding: EdgeInsets.all(16.w),
        title: Text(
          'Sure You want to delete this item?',
          style: AppTextStyle.fs20Fw600CBl,
        ),
        content: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: 12.w),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item["title"]!, style: AppTextStyle.fs18Fw600CB),
                  SizedBox(height: 4.h),
                  Text(item["subtitle"]!),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.asset(item["image"]!, width: 50, height: 50),
            ),
          ],
        ),
        actions: [
          CustomElevatedButton(
            textEleBtn: 'Yes, Delete',
            onPressed: () => Navigator.of(context).pop(true),
          ),
          CustomElevatedButton(
            textEleBtn: 'No',
            onPressed: () => Navigator.of(context).pop(false),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppString.bookMark, style: AppTextStyle.fs32Fw600CBl),
        centerTitle: true,
        backgroundColor: AppColor.lightWhite,
      ),
      body: ListView.separated(
        padding: AppPadding.paddingH32V24,
        itemCount: cardListBookMark.length,
        itemBuilder: (context, index) {
          final item = cardListBookMark[index];
          return Dismissible(
            key: Key(item["title"]!),
            direction: DismissDirection.startToEnd,
            confirmDismiss: (direction) async {
              final result = await _showDeleteDialog(context, item);
              if (result == true) {
                setState(() {
                  cardListBookMark.removeAt(index);
                });
              }
              return result;
            },
            background: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20.w),
              color: AppColor.white,
              child: Icon(Icons.delete, color: AppColor.grey),
            ),
            child: CustomBookMark(
              title: item["title"]!,
              subtitle: item["subtitle"]!,
              image: item["image"]!,
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 24.h),
      ),
    );
  }
}
