import 'package:cyber_m3u8_mobile/maps.dart';
import 'package:cyber_m3u8_mobile/theme/app_theme.dart';
import 'package:cyber_m3u8_mobile/tv_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TvHomePage extends StatelessWidget {
  const TvHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 1.sw,
        height: 1.sh,
        decoration: const BoxDecoration(gradient: ColorTheme.gc3),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const TvDetailPage(type: TvType.normal)));
                  },
                  child: Text(
                    "綜合",
                    style: FontTheme.w01,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const TvDetailPage(type: TvType.news)));
                  },
                  child: Text(
                    "新聞",
                    style: FontTheme.w01,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const TvDetailPage(type: TvType.movie)));
                  },
                  child: Text(
                    "電影",
                    style: FontTheme.w01,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
