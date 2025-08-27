import 'package:flutter/material.dart';

import '../../../core/utils/app_route.dart';

class WeatherView extends StatelessWidget {
  static const String id = AppRoute.weather;

  const WeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('weather'));
  }
}
