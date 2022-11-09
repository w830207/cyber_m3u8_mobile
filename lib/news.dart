import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'env/app_config.dart';
import 'theme/app_theme.dart';
import 'widgets/floating_action_button.dart';
import 'widgets/video_player.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  Map map = {
    "民視新聞 HD": "http://38.64.72.148:80/hls/modn/list/4012/chunklist0.m3u8",
    // "民視新聞2 HD":"http://38.64.72.148:80/hls/modn/list/4012/chunklist1.m3u8",
    // "台視新聞2 HD":"http://38.64.72.148:80/hls/modn/list/4013/chunklist0.m3u8",
    // "台視新聞3 HD":"http://38.64.72.148:80/hls/modn/list/4013/chunklist1.m3u8",
    "台視新聞 HD": "https://git.io/JgkxY",
    // "台視新聞5 HD":"https://raw.githubusercontent.com/etag2000/IPTV/YTlive/ttvnews.m3u8",
    // "台視新聞6 HD":"http://50.7.220.74:8278/ttvnews_twn/playlist.m3u8?tid=MD9D1039476110394761&ct=19193&tsum=9f33349842788bfb7b0e90e93f7bf02c",
    "中視新聞 HD": "https://git.io/Jgkxz",
    // "中視新聞2 HD":"http://50.7.220.74:8278/zhongshinews_twn/playlist.m3u8?tid=MAAA4459856044598560&ct=19193&tsum=1b7bdea69c00cd48e31f13442c75c376",
    // "中視新聞3 HD":"http://198.16.64.10:8278/zhongshinews_twn/playlist.m3u8?tid=MD8D4836803548368035&ct=19226&tsum=a2f06c15a5e9c4dc67565c2b8598c8da",
    "華視新聞資訊 HD":
        "http://218.32.47.179:8538/http/192.168.1.9:8081/hls/61/803/ch03.m3u8",
    "壹電視 HD": "http://60.251.59.180:8501/.m3u8",
    "TVBS新聞": "http://38.64.72.148:80/hls/modn/list/4006/chunklist0.m3u8",
    // "TVBS新聞2":"http://38.64.72.148:80/hls/modn/list/4006/chunklist1.m3u8",
    "三立新聞 LIVE": "http://60.251.59.180:8506/ch18.m3u8",
    "三立iNEWS": "https://git.io/Jgkxj",
    "三立iNEWS+":
        "https://raw.githubusercontent.com/etag2000/IPTV/YTlive/setlive.m3u8",
    // "東森財經3 HD":"https://git.io/Jgkpc",
    "東森新聞":
        "http://60.251.59.180:8503/http/60.251.39.91:8081/hls/72/814/ch48.m3u8",
    "東森財經 HD": "http://123.51.229.65:18515/.m3u8",
    // "東森財經5 HD":"http://198.16.64.10:8278/ettvcaijing_twn/playlist.m3u8?tid=MD5D9010164090101640&ct=19225&tsum=cc229773020f89af853b23d81e0e6371",
    // "寰宇新聞台灣台1":"https://git.io/JgkpO",
    "寰宇新聞台灣台":
        "https://raw.githubusercontent.com/etag2000/IPTV/YTlive/hyxw.m3u8",
    "原住民族電視台":
        "http://streamipcf.akamaized.net/live/_definst_/live_720/chunklist_b1500.m3u8",
    // "原住民族電視台2":"http://streamipcf.akamaized.net/live/_definst_/smil:live.smil/chunklist_b3000.m3u8?cuac=guest&cref=http%3A%2F%2Ftitv.ipcf.org.tw%2F",
    // "原住民族電視台3":"http://streamipcf.akamaized.net/live/_definst_/smil:liveabr.smil/playlist.m3u8",
    "Now 直播331台": "https://api.leonardpark.dev/live/now/331",
    "Now 新聞台": "http://livetv.dnsfor.me:80/channel.4.m3u8",
  };

  bool show = false;
  String url = "";

  BannerAd? _anchoredAdaptiveAd;
  bool _isLoaded = false;

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
      adUnitId: AppConfig.config.AD_UNIT,
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
