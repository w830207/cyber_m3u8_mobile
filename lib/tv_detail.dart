import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'env/app_config.dart';
import 'theme/app_theme.dart';
import 'widgets/video_player.dart';
import 'widgets/floating_action_button.dart';
import 'maps.dart';

class TvDetailPage extends StatefulWidget {
  const TvDetailPage({
    Key? key,
    required this.type,
  }) : super(key: key);
  final TvType type;

  @override
  State<TvDetailPage> createState() => _TvDetailPageState();
}

class _TvDetailPageState extends State<TvDetailPage> {
  bool show = false;
  String url = "";
  late Map map;

  BannerAd? _anchoredAdaptiveAd;
  bool _isLoaded = false;

  @override
  void initState() {
    super.initState();
    map = tvMap[widget.type] ?? tvMap.values.first;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _loadAd();
  }

  Future<void> _loadAd() async {
    // Get an AnchoredAdaptiveBannerAdSize before loading the ad.
    final AnchoredAdaptiveBannerAdSize? size =
        await AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(
            MediaQuery.of(context).size.width.truncate());

    if (size == null) {
      if (kDebugMode) {
        print('Unable to get height of anchored banner.');
      }
      return;
    }

    _anchoredAdaptiveAd = BannerAd(
      // TODO: replace these test ad units with your own ad unit.
      adUnitId: Platform.isIOS
          ? AppConfig.config.AD_UNIT_IOS
          : AppConfig.config.AD_UNIT_ANDROID,
      size: size,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (Ad ad) {
          if (kDebugMode) {
            print('$ad loaded: ${ad.responseInfo}');
          }
          setState(() {
            // When the ad is loaded, get the ad size and use it to set
            // the height of the ad container.
            _anchoredAdaptiveAd = ad as BannerAd;
            _isLoaded = true;
          });
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          if (kDebugMode) {
            print('Anchored adaptive banner failedToLoad: $error');
          }
          ad.dispose();
        },
      ),
    );
    return _anchoredAdaptiveAd!.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 1.sw,
        height: 1.sh,
        decoration: const BoxDecoration(
          gradient: ColorTheme.gc3,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100.r),
              child: GridView.builder(
                itemCount: map.length,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  childAspectRatio: 1,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final key = map.keys.toList()[index];
                  final value = map[key];

                  return Container(
                    decoration: const BoxDecoration(
                      color: ColorTheme.c02,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextButton(
                      onPressed: () {
                        if (show) {
                          setState(() {
                            show = false;
                          });
                        }
                        Timer(const Duration(milliseconds: 200), () {
                          setState(() {
                            url = value;
                            show = true;
                          });
                        });
                      },
                      child: Text(
                        key,
                        style: FontTheme.w02,
                      ),
                    ),
                  );
                },
              ),
            ),
            if (_anchoredAdaptiveAd != null && _isLoaded)
              Container(
                color: Colors.green,
                width: _anchoredAdaptiveAd!.size.width.toDouble(),
                height: _anchoredAdaptiveAd!.size.height.toDouble(),
                child: AdWidget(ad: _anchoredAdaptiveAd!),
              ),
            Visibility(
              visible: show,
              child: VideoPlayer(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                url: url,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: MyFloatingActionButton(
        show: show,
        onPressed: () {
          if (show) {
            setState(() {
              show = false;
            });
          } else {
            Navigator.pop(context);
          }
        },
      ),
    );
  }
}
