import 'package:flutter/material.dart';

import '../../../core/utils/app_route.dart';

class BookMarkView extends StatelessWidget {
  static const String id = AppRoute.bookMark;

  const BookMarkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('BookMark'),
    );
  }
}
