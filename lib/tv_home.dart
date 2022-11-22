import 'package:cyber_m3u8_mobile/data/api_service.dart';
import 'package:cyber_m3u8_mobile/theme/app_theme.dart';
import 'package:cyber_m3u8_mobile/tv_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TvHomePage extends StatelessWidget {
  const TvHomePage({
    Key? key,
    required this.typeMap,
  }) : super(key: key);
  final Map typeMap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 1.sw,
        height: 1.sh,
        decoration: const BoxDecoration(gradient: ColorTheme.gc3),
        child: Center(
          child: SingleChildScrollView(
            child: Builder(
              builder: (context) {
                List<Widget> widgetList = [];
                typeMap.forEach((key, value) {
                  widgetList.add(TextButton(
                    onPressed: () async {
                      EasyLoading.show();
                      final map = await ApiService.to.getUrlsByType(type: key);
                      EasyLoading.dismiss();
                      Get.to(() => TvDetailPage(map: map));
                    },
                    child: Text(
                      value,
                      style: FontTheme.w01,
                    ),
                  ));
                });

                return Column(children: widgetList);
              },
            ),
          ),
        ),
      ),
    );
  }
}
