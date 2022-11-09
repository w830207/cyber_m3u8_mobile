import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'env/app_config.dart';
import 'theme/app_theme.dart';
import 'widgets/video_player.dart';
import 'widgets/floating_action_button.dart';

class NormalPage extends StatefulWidget {
  const NormalPage({Key? key}) : super(key: key);

  @override
  State<NormalPage> createState() => _NormalPageState();
}

class _NormalPageState extends State<NormalPage> {
  Map map = {
    "公視":
        "http://50.7.220.74:8278/ctv_taiwan/playlist.m3u8?tid=13765524&ct=17990&tsum=03eb77c1c186944b97737f14e95076c0",
    // "公視 4":"http://198.16.64.10:8278/ctv_taiwan/playlist.m3u8?tid=MCCC8750228587502285&ct=19225&tsum=aca6268c0dd9f618ed5e944942132557",
    // "民視 HD 4":"http://50.7.220.74:8278/ftvhd_taiwan/playlist.m3u8?tid=15141291&ct=17990&tsum=ab93fcdf581cc3f483e1ceede13312ce",
    "民視 HD": "http://23.237.10.66:16334",
    // "台視 HD 1":"http://50.7.220.74:8278/ttv_taiwan/playlist.m3u8?tid=MEDE4406594744065947&ct=19193&tsum=079f13bae33c63d33bb128fd265e8466",
    // "台視 HD 4":"http://123.51.229.65:18543/http/192.168.1.9:8081/hls/72/814/ch46.m3u8",
    // "台視 HD 5":"http://23.237.10.66:16344",
    "台視 HD": "http://123.51.229.65:18543/.m3u8",
    // "中視 HD 2":"http://50.7.220.74:8278/zhongshihd_twn/playlist.m3u8?tid=MB4B2404962324049623&ct=19193&tsum=671b112a447ed494ae6219c14d0fab93",
    "中視 HD":
        "http://198.16.64.10:8278/zhongshihd_twn/playlist.m3u8?tid=MB8B7313326473133264&ct=19226&tsum=ae7506028e559f3a6e2a3519b2f6a91e",
    // "中視 HD 6":"http://198.16.64.10:8278/zhongshihd_twn/playlist.m3u8?tid=MB8B7313326473133264&ct=19226&tsum=ae7506028e559f3a6e2a3519b2f6a91e",
    "華視 HD":
        "http://218.32.47.179:18503/http/192.168.1.9:8081/hls/72/814/ch48.m3u8",
    // "華視 HD 6":"http://50.7.220.74:8278/ctshd_twn/playlist.m3u8?tid=m760743cf1f5e&ct=18335&tsum=9b0d2efb292253075aa4ec25cc439b81",
    // "華視 HD 7":"http://50.7.220.74:8278/ctshd_twn/playlist.m3u8?tid=MD3D4860867448608674&ct=19193&tsum=773d4005ddbc68ed16154cc49ba1fc76",
    // "華視 HD 8":"http://198.16.64.10:8278/ctshd_twn/playlist.m3u8?tid=MAFA1309481213094812&ct=19226&tsum=429f7c40691cdcc6c1fb108dbd11e002",
    "中天娛樂 HD":
        "http://198.16.64.10:8278/ctient/playlist.m3u8?tid=MDED1780059017800590&ct=19226&tsum=4d05ea700aa8fd436b51ce703680e674",
    // "中天娛樂 HD 3":"http://50.7.220.74:8278/ctient/playlist.m3u8?tid=MA8A3069789530697895&ct=19193&tsum=20c49fe9e15ad366c6e32b141f03bf8a",
    // "中天综合 HD 1":"http://50.7.220.74:8278/ctizhonghe/playlist.m3u8?tid=MBBB1520797915207979&ct=19193&tsum=3a6f7f0c591c2ec6678d51b741f290b2",
    // "中天綜合 HD 1":"http://198.16.64.10:8278/ctizhonghe/playlist.m3u8?tid=ME3E9861589598615895&ct=19226&tsum=7e6a4896cab50c2c48d7a889c1076ffc",
    // "中天綜合 HD 2":"http://23.237.10.66:16372",
    // "中天綜合 HD 3":"http://218.32.47.179:18526/http/192.168.1.9:8081/hls/67/809/ch25.m3u8",
    "中天綜合 HD": "http://218.32.47.179:18526/.m3u8",
    "八大第一 HD": "http://123.51.229.65:18539/.m3u8",
    // "八大第一 HD 2":"http://50.7.220.74:8278/badafirst/playlist.m3u8?tid=mb8efded78b4e12042621&ct=17874&tsum=028ad819cd9a0f949a043d652fa3e164",
    // "八大戲劇 HD 3":"http://50.7.220.74:8278/badadrama/playlist.m3u8?tid=m4a65d3abd9ee13871929&ct=17924&tsum=8e5ef501e42d00cdc6a761ca3dc693d8",
    "八大戲劇 HD": "http://218.32.47.179:18531/.m3u8",
    // "八大综合 0":"http://50.7.220.74:8278/badazhonghe/playlist.m3u8?tid=MC5C5422299054222990&ct=19193&tsum=8189d5b21bdeabdffa3d2b2cbeaae0ae",
    // "八大綜合 1":"http://198.16.64.10:8278/badazhonghe/playlist.m3u8?tid=MC7C4692263546922635&ct=19225&tsum=ffdc7a6397b511103e0df0b92e678790",
    "八大綜合": "http://218.32.47.179:18520/.m3u8",
    "三立戲劇":
        "http://198.16.64.10:8278/sanlixiju_twn/playlist.m3u8?tid=MBDB8405357084053570&ct=19226&tsum=78944c0951d21a699e46fff4318a3799",
    // "三立戲劇 2":"http://198.16.64.10:8278/sanlixiju_twn/playlist.m3u8?tid=MBDB8405357084053570&ct=19226&tsum=78944c0951d21a699e46fff4318a3799",
    // "三立台灣 0":"http://218.32.47.179:18521/http/192.168.1.9:8081/hls/65/807/ch20.m3u8",
    "三立臺灣": "http://218.32.47.179:18521/.m3u8",
    // "三立台灣 1":"http://218.32.47.179:18521/http/192.168.1.9:8081/hls/65/807/ch20.m3u8",
    // "三立台灣 2":"http://50.7.220.74:8278/sanlitaiwan/playlist.m3u8?tid=MBFB2351438523514385&ct=19193&tsum=15393958be0bf6c0905bbb578dad1240",
    "三立綜合":
        "http://50.7.220.74:8278/sanlizhonghe/playlist.m3u8?tid=MB0B8754413687544136&ct=19193&tsum=b815a8eec252a8266b57178e6b336b03",
    // "年代 MUCH HD 1":"http://218.32.47.179:18529/http/192.168.1.9:8081/hls/72/814/ch45.m3u8",
    "年代 MUCH HD": "http://218.32.47.179:18529/.m3u8",
    "東風37": "http://123.51.229.65:18560/.m3u8",
    "東森戲劇 HD": "http://60.251.33.252:18538/.m3u8",
    // "東森戲劇 HD 2":"http://123.51.229.65:18538/.m3u8",
    // "東森戲劇 HD 3":"http://50.7.220.74:8278/ettvdrama/playlist.m3u8?tid=m921dcb630ebe17354109&ct=17874&tsum=695370160923af940d1a90d44c262acc",
    "東森綜合 1": "http://for40255.sytes.net:8099/tv/iptv/live.php?id=dsxw",
    // "東森綜合 2":"http://50.7.220.74:8278/ettvzhonghe/playlist.m3u8?tid=m65c4e525f24617101171&ct=17874&tsum=663db593cfeefc92ce4b5d7461988f3f",
    "東森綜合 3": "http://218.32.47.179:18524/.m3u8",
    "東森超視":
        "http://198.16.64.10:8278/ettvsuper/playlist.m3u8?tid=MA4A3005409230054092&ct=19225&tsum=c5d89f66fa1a8bcd26f482d4a370def5",
    "TVBS歡樂台 HD":
        "http://50.7.220.74:8278/tvbshuanle_twn/playlist.m3u8?tid=MC8C2318787923187879&ct=19193&tsum=394d2b9af3df7846e2cdc60d69dd4219",
    // "TVBS歡樂台 HD 4":"http://198.16.64.10:8278/tvbshuanle_twn/playlist.m3u8?tid=MA9A4111409641114096&ct=19225&tsum=600f3056bba6413dec3155efd19e2d20",
    "衛視中文台": "http://123.51.229.65:18504/.m3u8",
    // "緯來育樂 HD 4":"http://218.32.47.179:18562/http/192.168.1.9:8081/hls/68/810/ch30.m3u8",
    "緯來育樂 HD": "http://218.32.47.179:18562/.m3u8",
    "緯來戲劇 HD":
        "http://218.32.47.179:18533/http/192.168.1.9:8081/hls/69/811/ch33.m3u8",
    // "緯來戲劇 HD 2":"http://218.32.47.179:18533/.m3u8",
    "MOMO綜合":
        "http://218.32.47.179:8579/http/60.249.81.21:8088/hls/76/818/momo_max.m3u8",
    "AXN":
        "http://50.7.220.74:8278/axn_twn/playlist.m3u8?tid=m1776995e9b3e16458394&ct=17874&tsum=b8a111d0b13c7761ce8b4e8f047adddb",
    "愛爾達影劇":
        "http://50.7.220.74:8278/eltadrama_twn/playlist.m3u8?tid=mea60e416943110603068&ct=17874&tsum=ede38d2a218a34b5397af9d19e0c39a3",
    // "愛爾達影劇 3":"http://198.16.64.10:8278/eltayingju_twn/playlist.m3u8?tid=MFBF4492563944925639&ct=19225&tsum=d4fb09f164ea4850c14546a14d075d04",
    "EYE TV戲劇":
        "http://50.7.220.74:8278/eyetvxiju_twn/playlist.m3u8?tid=m379e8846d31b14432367&ct=17874&tsum=2c4c2acd16a5a5e00797ad6f4c4cb586",
    "靖天國際台":
        "http://198.16.64.10:8278/jingtianintl_twn/playlist.m3u8?tid=ME4E7632479576324795&ct=19226&tsum=9922eeed6392b21e1710ba791cc599d6",
    "龍華戲劇":
        "http://218.32.47.179:8534/http/192.168.1.9:8066/hls/210/10010/cstv10.m3u8",
    // "龍華戲劇 2":"http://198.16.64.10:8278/lunghuaxiju_twn/playlist.m3u8?tid=MBAB4709384347093843&ct=19226&tsum=a2a7258f8565588e10b8da2f26ba8039",
    // "龍華戲劇 3":"http://123.51.229.65:18513/.m3u8",
    // "龍華戲劇 4":"http://198.16.64.10:8278/lunghuaxiju_twn/playlist.m3u8?tid=MBAB4709384347093843&ct=19226&tsum=a2a7258f8565588e10b8da2f26ba8039",
    // "龍華日韓 1":"http://218.32.47.179:8535/http/192.168.1.9:8088/hls/15/80/foxsports2.m3u8",
    "龍華日韓": "http://123.51.229.65:18551/.m3u8",
    "龍華偶像 1":
        "http://218.32.47.179:8536/http/192.168.1.9:8066/hls/210/10012/cstv12.m3u8",
    // "龍華偶像 2":"http://198.16.64.10:8278/lunghuaidol_twn/playlist.m3u8?tid=ME6E1618913016189130&ct=19226&tsum=392d7662a2ff7080289fbe9646e8501d",
    "龍華洋片":
        "http://198.16.64.10:8278/lunghuawestern_twn/playlist.m3u8?tid=MC1C3944472239444722&ct=19226&tsum=99c0c7c82e2fc48b16605865c3eaeb82",
    "幸福空間居家台": "https://git.io/JgYYF",
    "中台灣生活網":
        "http://58.99.33.16:1935/liveedge17/live_020_3.stream/chunklist.m3u8",
    // "中台灣生活網 2":"http://58.99.33.16:1935/liveedge17/live_852_3.stream/chunklist.m3u8",
    "雲林新聞網":
        "http://58.99.33.16:1935/liveedge17/live_854_3.stream/chunklist.m3u8",
    "南投新聞網":
        "http://58.99.33.16:1935/liveedge17/live_853_3.stream/chunklist.m3u8",
    "大愛1台": "https://pulltv1.wanfudaluye.com/live/tv1.m3u8",
    "大愛2台": "https://pulltv2.wanfudaluye.com/live/tv2.m3u8",
    // "大愛電視 1":"http://218.32.47.179:8507/http/192.168.1.9:8081/hls/73/815/ch52.m3u8",
    // "大愛電視 2":"http://123.51.229.65:18567/.m3u8",
    "大立電視": "http://www.dalitv.com.tw:4568/live/dali/index.m3u8",
    "人間衛視": "http://61.216.67.119:1935/bltvhd/bltv1/chunklist_w1266569526.m3u",
    // "人間衛視 3":"http://123.51.229.65:18561/.m3u8",
    "臺灣番薯台": "http://61.216.67.119:1935/TWHG/E1/chunklist_w705811302.m3u8",
    "GOOD TV 好消息": "http://123.51.229.65:18507/.m3u8",
    "The K-POP": "https://git.io/JgYAE",
    // "Sexy K-Pop 1":"https://srv1.zcast.com.br/kpoptv/kpoptv/.m3u8",
    "Sexy K-Pop": "https://srv1.zcast.com.br/kpoptv/kpoptv/playlist.m3u8",
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
