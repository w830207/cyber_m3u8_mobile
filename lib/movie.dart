import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'env/app_config.dart';
import 'theme/app_theme.dart';
import 'widgets/floating_action_button.dart';
import 'widgets/video_player.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  Map map = {
    // "東森電影 1":"http://120.84.96.69:808/hls/32/index.m3u8",
    "東森電影": "http://120.84.96.161:808/hls/32/index.m3u8",
    // "東森洋片 1":"http://120.84.96.69:808/hls/33/index.m3u8",
    "東森洋片": "http://120.84.96.161:808/hls/33/index.m3u8",
    // "東森洋片 5":"http://198.16.64.10:8278/ettvwestern/playlist.m3u8?tid=MC2C7134276471342764&ct=19225&tsum=4889d0c08d077336bd5066b912891aee",
    "龍華洋片":
        "http://198.16.64.10:8278/lunghuawestern_twn/playlist.m3u8?tid=MC1C3944472239444722&ct=19226&tsum=99c0c7c82e2fc48b16605865c3eaeb82",
    // "龍祥時代 1":"http://120.84.96.69:808/hls/35/index.m3u8",
    "龍祥時代": "http://120.84.96.161:808/hls/35/index.m3u8",
    "龍華電影": "http://218.32.47.179:18556/.m3u8",
    // "龍華電影 2":"http://218.32.47.179:18556/http/192.168.1.9:8066/hls/210/10014/cstv14.m3u8",
    "衛視電影 HD": "http://218.32.47.179:18553/.m3u8",
    // "天映經典 1":"http://210.210.155.37/qwr9ew/s/s31/index2.m3u8",
    "天映經典":
        "http://198.16.64.10:8278/Celestial2/playlist.m3u8?tid=MD3D1210050512100505&ct=19225&tsum=d40ac484b1a904e59158bd911bbd8b89",
    "天映頻道":
        "http://198.16.64.10:8278/Celestial/playlist.m3u8?tid=MCFC1164333411643334&ct=19225&tsum=3668a5dd07515bbf30cfeebe267936ff",
    // "CINEMAX 1":"http://218.32.47.179:18559/http/192.168.1.9:8081/hls/71/813/ch42.m3u8",
    "CINEMAX": "http://218.32.47.179:18559/.m3u8",
    // "CINEMAX 3":"http://50.7.220.74:8278/cinemax_twn/playlist.m3u8?tid=MCEC1614519816145198&ct=19193&tsum=e635ddeeb683b5cbcda1319d0cc18f84",
    "HBO 2台": "http://hpull.kktv8.com/livekktv/128600025/playlist.m3u8",
    "HBO Signature":
        "http://50.7.220.74:8278/hbosignature_twn/playlist.m3u8?tid=MD6D5767423357674233&ct=18392&tsum=995709f1100cf1b07964790160bfb4ee",
    "好萊塢電影 HD": "http://www.372583307.top:4022/udp/233.50.201.228:5140",
    "Hollywood HD":
        "http://50.7.220.74:8278/hollywoodmovies_twn/playlist.m3u8?tid=MA8A4005638840056388&ct=18392&tsum=a1f1517d4ea64fd01267905f21d83859",
    "漫威宇宙電影01": "http://epg.112114.xyz/douyu/4282654",
    "漫威宇宙電影02":
        "http://txtest-xp2p.p2p.huya.com/src/1448738325-1448738325-6222283726336819200-3048991600-10057-A-0-1.xs",
    "變種人電影": "http://epg.112114.xyz/douyu/9651304",
    "歐美電影01": "http://jxiptv.xn--9kqp7k2rd.com/svip/yy.php?t=24923327",
    // "歐美電影02 1":"http://mmitv.top/pltv/yy.php?id=24923327",
    "歐美電影03": "http://jxiptv.xn--9kqp7k2rd.com/svip/yy.php?t=37988782",
    // "歐美電影04 1":"http://mmitv.top/pltv/yy.php?id=37988782",
    "歐美電影05": "http://mmitv.top/pltv/yy.php?id=29170933",
    "歐美電影06": "http://mmitv.top/pltv/yy.php?id=26623173",
    "Hi-YAH!":
        "https://linear-59.frequency.stream/dist/plex/59/hls/master/playlist.m3u8",
    "金馬影院": "http://hpull.kktv8.com/livekktv/128600025/playlist.m3u8",
    "譯製電影": "http://epg.112114.xyz/douyu/2436390",
    "PANDA影院": "http://182.151.211.171:808/hls/127/index.m3u8",
    "每日影院": "http://182.151.211.171:808/hls/128/index.m3u8",
    "1905電影":
        "http://txtest-xp2p.p2p.huya.com/huyalive/1199513205060-1199513205060-5228390287876816896-2399026533576-10057-A-0-1.xs",
    "天映電影": "http://jyjxy.7766.org:808/hls/62/index.m3u8",
    "可樂電影": "http://epg.112114.xyz/douyu/20415",
    "奶蟲恐怖電影": "http://epg.112114.xyz/douyu/263824",
    "恐怖經典電影": "http://epg.112114.xyz/douyu/1165374",
    "冰冰經典電影": "http://epg.112114.xyz/douyu/74374",
    "宇哥電影": "http://epg.112114.xyz/douyu/413573",
    "米婭電影": "http://epg.112114.xyz/douyu/6537888",
    "豆瓣高分電影TOP250": "http://epg.112114.xyz/douyu/8770422",
    "貝爺MAX廳": "http://epg.112114.xyz/douyu/4332",
    "貝爺影廳": "http://epg.112114.xyz/douyu/252802",
    "貝爺影廳2": "http://epg.112114.xyz/douyu/36337",
    "武俠經典電影": "http://mmitv.top/pltv/yy.php?id=1353587611",
    "高分好看電影": "http://mmitv.top/pltv/yy.php?id=1353312849",
    "高清影院": "http://112.19.214.90:8883/tsfile/live/1011_1.m3u8",
    "陪你看電影": "http://mmitv.top/pltv/yy.php?id=24407222",
    "華語動作電影": "http://epg.112114.xyz/douyu/1504768",
    "華語經典電影": "http://epg.112114.xyz/douyu/434971",
    "華語電影": "http://epg.112114.xyz/douyu/3928",
    "香港電影": "http://epg.112114.xyz/huya/11602058",
    "經典電影": "http://jyjxy.7766.org:808/hls/126/index.m3u8",
    "歷年賀歲大片":
        "http://txtest-xp2p.p2p.huya.com/src/1524418118-1524418118-6547325962239868928-3048959692-10057-A-0-1.xs",
    // "歷年賀歲大片02":
    //     "http://txtest-xp2p.p2p.huya.com/src/1524418118-1524418118-6547325962239868928-3048959692-10057-A-0-1.xs",
    "動作大片":
        "http://txtest-xp2p.p2p.huya.com/src/1524439840-1524439840-6547419257519472640-3049003136-10057-A-0-1.xs",
    "熱播大片":
        "http://txtest-xp2p.p2p.huya.com/src/1423782052-1423782052-6115097349971771392-2847687560-10057-A-0-1.xs",
    "24小時藍光大片 1": "http://jxiptv.xn--9kqp7k2rd.com/svip/yy.php?t=24066336",
    "24小時藍光大片 2": "http://mmitv.top/pltv/yy.php?id=24066336",
    "明星大片":
        "http://39.135.138.59:18890/PLTV/88888910/224/3221225716/index.m3u8",
    "午夜影院": "https://pull.kktv8.com/livekktv/99592190.flv",
    "T-ARA":
        "http://tc-tct.douyucdn2.cn/dyliveflv3/17732rtara.flv?wsAuth=444b28368bc6cf374a8f22734242cdec&token=cpn-androidmpro-0-17732-2c028a7d8b69ac4c6a43608933105351f464f9543343a70c&logo=0&expire=0&did=d010b07dcb997ada9934081c873542f0&origin=tct&vhost=play3",
    "女神金電影": "http://epg.112114.xyz/douyu/747764",
    "女神經典影院": "http://hpull.kktv8.com/livekktv/99350550/playlist.m3u8",
    "女神影院": "https://pull.kktv8.com/livekktv/99350550.flv",
    "印度電影": "http://23.237.10.66:16054",
    "CHC家庭影院 1": "http://120.84.96.161:808/hls/36/index.m3u8",
    "CHC家庭影院 2": "http://125.40.191.58:9901/tsfile/live/1001_1.m3u8",
    "CHC家庭影院 3": "http://jyjxy.7766.org:808/hls/60/index.m3u8",
    "CHC家庭影院 4": "http://111.20.33.93/TVOD/88888893/224/3221226462/index.m3u8",
    "CHC家庭影院 5": "http://111.20.33.93/PLTV/88888893/224/3221226462/index.m3u8",
    "CHC高清電影 1": "http://222.132.191.125:9901/tsfile/live/1010_1.m3u8",
    "CHC動作電影 1": "http://120.84.96.161:808/hls/31/index.m3u8",
    "CHC動作電影 2": "http://jyjxy.7766.org:808/hls/56/index.m3u8",
    "CHC動作電影 3": "http://125.40.191.58:9901/tsfile/live/1002_1.m3u8",
    "NewTV超級電影 1":
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225623/index.m3u8",
    "NewTV超級電影 2":
        "http://39.135.138.58:18890/PLTV/88888888/224/3221225623/index.m3u8",
    "NewTV超級電影 3":
        "http://39.135.138.58:18890/PLTV/88888888/224/3221225766/index.m3u8",
    "NewTV超級電影 4":
        "http://39.135.138.59:18890/PLTV/88888910/224/3221225623/index.m3u8",
    "NewTV精品電影 1":
        "http://39.135.138.60:18890/PLTV/88888910/224/3221225718/index.m3u8",
    "黑莓電影 1":
        "http://39.135.138.58:18890/PLTV/88888888/224/3221225718/index.m3u8",
    "黑莓電影 2":
        "http://hwrr.jx.chinamobile.com:8080/PLTV/88888910/224/3221225764/index.m3u8",
    "黑莓電影 3":
        "http://hwrr.jx.chinamobile.com:8080/PLTV/88888910/224/3221225718/index.m3u8",
    "黑莓電影 4":
        "http://hwrr.jx.chinamobile.com:8080/PLTV/88888910/224/3221225769/index.m3u8",
    "黑莓電影 5":
        "http://39.134.116.30:8080/PLTV/88888910/224/3221225769/index.m3u8",
    "黑莓電影 6":
        "http://39.134.116.30:8080/PLTV/88888910/224/3221225764/index.m3u8",
    "黑莓電影 7":
        "http://39.135.138.59:18890/PLTV/88888910/224/3221225718/index.m3u8",
    "黑莓電影 8":
        "http://39.135.138.59:18890/PLTV/88888910/224/3221225764/index.m3u8",
    "黑莓電影 9":
        "http://39.135.138.58:18890/PLTV/88888910/224/3221225764/index.m3u8",
    "黑莓電影 10":
        "http://39.135.138.59:18890/PLTV/88888910/224/3221225769/index.m3u8",
    "黑莓電影 11":
        "http://39.134.115.163:8080/PLTV/88888910/224/3221225718/index.m3u8",
    "黑莓電影 12":
        "http://39.134.116.30:8080/PLTV/88888910/224/3221225718/index.m3u8",
    "黑莓電影 13": "http://183.207.249.14/PLTV/3/224/3221225567/index.m3u8",
    "黑莓電影 14":
        "http://39.135.138.58:18890/PLTV/88888910/224/3221225769/index.m3u8",
    "黑莓電影 15":
        "http://hwrr.jx.chinamobile.com:8080/PLTV/88888888/224/3221225769/index.m3u8",
    "黑莓電影 16":
        "http://hwrr.jx.chinamobile.com:8080/PLTV/88888888/224/3221225718/index.m3u8",
    "黑莓電影 17":
        "http://hwrr.jx.chinamobile.com:8080/PLTV/88888888/224/3221225764/index.m3u8",
    "黑莓電影 18":
        "http://39.135.138.58:18890/PLTV/88888888/224/3221225764/index.m3u8",
    "黑莓電影 19":
        "http://39.135.138.58:18890/PLTV/88888888/224/3221225769/index.m3u8",
    "黑莓電影 20": "http://111.13.42.233/PLTV/88888888/224/3221226939/1.m3u8",
    "私人影院 1": "http://jyjxy.7766.org:808/hls/57/index.m3u8",
    "峨嵋電影 1": "http://112.19.214.90:8883/tsfile/live/1004_1.m3u8",
    "峨嵋電影 2": "http://182.151.211.171:808/hls/58/index.m3u8",
    "峨嵋電影 3": "http://vl15191373.imwork.net:8880/udp/239.93.0.252:5140",
    "電影輪播02 1": "http://hpull.kktv8.com/livekktv/99592190/playlist.m3u8",
    "電影輪播03 1": "http://jxiptv.xn--9kqp7k2rd.com/svip/yy.php?t=1353059120",
    "電影輪播04 1": "http://mmitv.top/pltv/yy.php?id=1353059120",
    "中國功夫系列 1":
        "http://txtest-xp2p.p2p.huya.com/src/1448738174-1448738174-6222283077796757504-2847699112-10057-A-0-1.xs",
    "古墓系列 1":
        "http://txtest-xp2p.p2p.huya.com/src/1423782085-1423782085-6115097491705692160-2847687626-10057-A-0-1.xs",
    "玄幻系列 1":
        "http://txtest-xp2p.p2p.huya.com/src/1423787882-1423787882-6115122389631107072-2847699220-10057-A-0-1.xs",
    "死神來了系列 1":
        "http://txtest-xp2p.p2p.huya.com/src/1423782074-1423782074-6115097444461051904-2847687604-10057-A-0-1.xs",
    "香港女神系列 1":
        "http://txtest-xp2p.p2p.huya.com/src/1388451591-1388451591-5963354175424167936-2777026638-10057-A-0-1.xs",
    "香港黑幫系列 1":
        "http://txtest-xp2p.p2p.huya.com/src/1394575541-1394575541-5989656340396507136-2789274538-10057-A-0-1.xs",
    "喜劇系列 1":
        "http://txtest-xp2p.p2p.huya.com/src/1524434089-1524434089-6547394557162553344-3048991634-10057-A-0-1.xs",
    "詠春系列 1":
        "http://txtest-xp2p.p2p.huya.com/src/1448737814-1448737814-6222281531608530944-2777037662-10057-A-0-1.xs",
    "黑幫系列 1":
        "http://txtest-xp2p.p2p.huya.com/src/1388472589-1388472589-5963444361147449344-2777068634-10057-A-0-1.xs",
    "賽車系列 1":
        "http://txtest-xp2p.p2p.huya.com/src/1354978385-1354978385-5819587850361896960-2710080226-10057-A-0-1.xs",
    "警匪系列 1":
        "http://txtest-xp2p.p2p.huya.com/src/1449581589-1449581589-6225905517638713344-3048959636-10057-A-0-1.xs",
    "許氏三傑系列 1":
        "http://txtest-xp2p.p2p.huya.com/src/1524434070-1524434070-6547394475558174720-3048991596-10057-A-0-1.xs",
    "喜劇經典 1": "http://epg.112114.xyz/douyu/9650887",
    "經典神劇 1": "http://epg.112114.xyz/douyu/3700024",
    "電視劇 1": "http://mmitv.top/pltv/yy.php?id=1453059740",
    "電視劇 2": "http://mmitv.top/pltv/yy.php?id=29216766",
    "東方影視 1": "http://112.25.48.70/live/program/live/dsjpdhd/4000000/mnf.m3u8",
    "東北熱劇 1":
        "http://39.134.115.163:8080/PLTV/88888910/224/3221226202/index.m3u8",
    "芒果樂搜 1":
        "http://124.232.233.17:6610/000000001001/201600020010/1400.m3u8?IASHttpSessionId=SLB2046220190906022827233263&m3u8_level=2",
    "芒果樂搜 2":
        "http://124.232.231.246:6610/000000001001/201600020010/1000.m3u8?IASHttpSessionId=OTT2933020211208004916069966&zte_bandwidth=1000&bandwidth=1433600&ispcode=3&timeformat=local&channel=201600020004&ztecid=201600020004&m3u8_level=2&A=",
    "芒果樂搜 3":
        "http://124.232.231.246:6610/000000001001/201600020010/index.m3u8?",
    "長城精品 1": "http://38.64.72.148:80/hls/modn/list/4008/chunklist0.m3u8",
    "長城精品 2":
        "http://50.7.220.74:8278/chcfamily/playlist.m3u8?tid=ME7E3282776332827763&ct=18393&tsum=c098f25f9c140478d2a814b22a7ccbd3",
    "成龍 1": "http://106.53.212.251/daili/yy.php?id=1354888751",
    "成龍 2": "http://mmitv.top/pltv/yy.php?id=34460526",
    "成龍 3":
        "http://txtest-xp2p.p2p.huya.com/src/1394565191-1394565191-5989611887484993536-2789253838-10057-A-0-1.xs",
    "沈騰 1":
        "http://txtest-xp2p.p2p.huya.com/src/1524418085-1524418085-6547325820505948160-3048959626-10057-A-0-1.xs",
    "沈騰 2":
        "http://txtest-xp2p.p2p.huya.com/src/1524439855-1524439855-6547419321943982080-3049003166-10057-A-0-1.xs",
    "林正英電影01 1": "http://mmitv.top/pltv/yy.php?id=34229877",
    "林正英電影02 1": "http://epg.112114.xyz/douyu/7356023",
    "林正英電影03 1": "http://jxiptv.xn--9kqp7k2rd.com/svip/yy.php?t=1351505899",
    "林正英電影04 1": "http://jxiptv.xn--9kqp7k2rd.com/svip/yy.php?t=1353685311",
    "林正英電影05 1": "http://mmitv.top/pltv/yy.php?id=1353685311",
    "林正英電影06 1": "http://mmitv.top/pltv/yy.php?id=1354869861",
    "林正英電影07 1":
        "http://txtest-xp2p.p2p.huya.com/src/1394575543-1394575543-5989656348986441728-2789274542-10057-A-0-1.xs",
    "林正英電影08 1": "http://mmitv.top/pltv/yy.php?id=1351505899",
    "燕雙鷹專場 1": "http://mmitv.top/pltv/yy.php?id=1352227153",
    "天龍八部 1": "http://mmitv.top/pltv/yy.php?id=1351814644",
    "王晶導演 1":
        "http://txtest-xp2p.p2p.huya.com/src/1524434111-1524434111-6547394651651833856-3048991678-10057-A-0-1.xs",
    "古裝武俠 1":
        "http://txtest-xp2p.p2p.huya.com/src/1394575562-1394575562-5989656430590820352-2789274580-10057-A-0-1.xs",
    "吳孟達 1":
        "http://txtest-xp2p.p2p.huya.com/src/1388457235-1388457235-5963378416219586560-2777037926-10057-A-0-1.xs",
    "李連杰 1":
        "http://txtest-xp2p.p2p.huya.com/src/1394565196-1394565196-5989611908959830016-2789253848-10057-A-0-1.xs",
    "狄仁傑1-4部 1": "http://mmitv.top/pltv/yy.php?id=1351755386",
    "那些年 1": "http://mmitv.top/pltv/yy.php?id=1351417866",
    "周星星粵語經典版 1":
        "http://txtest-xp2p.p2p.huya.com/src/1250011-1250011-5368756364640256-2777036638-10057-A-0-1.xs",
    "周星馳 1": "http://mmitv.top/pltv/yy.php?id=1353881242",
    "周潤發 1":
        "http://txtest-xp2p.p2p.huya.com/src/1394565192-1394565192-5989611891779960832-2789253840-10057-A-0-1.xs",
    "搞笑鬼片 1":
        "http://txtest-xp2p.p2p.huya.com/src/1524418070-1524418070-6547325756081438720-3048959596-10057-A-0-1.xs",
    "劉德華 1":
        "http://txtest-xp2p.p2p.huya.com/src/1394575547-1394575547-5989656366166310912-2789274550-10057-A-0-1.xs",
    "金庸01 1": "http://mmitv.top/pltv/yy.php?id=1351762426",
    "金庸02 1":
        "http://txtest-xp2p.p2p.huya.com/src/1394575551-1394575551-5989656383346180096-2789274558-10057-A-0-1.xs",
    "重案六組 1": "http://mmitv.top/pltv/yy.php?id=33567888",
    "神探狄仁傑 1": "http://mmitv.top/pltv/yy.php?id=38338029",
    "高清藍光亮劍 1": "http://mmitv.top/pltv/yy.php?id=1353392400",
    "鬥羅鬥破 1": "http://mmitv.top/pltv/yy.php?id=28796627",
    "鬼吹燈全集 1": "http://mmitv.top/pltv/yy.php?id=1331686180",
    "動畫片莽荒紀 1": "http://mmitv.top/pltv/yy.php?id=1354930977",
    "國產連續劇 1": "http://mmitv.top/pltv/yy.php?id=1354143978",
    "康熙微服私訪記 1": "http://mmitv.top/pltv/yy.php?id=1352811698",
    "鹿鼎記高清經典 1": "http://mmitv.top/pltv/yy.php?id=28265277",
    "隋唐英雄 1": "http://mmitv.top/pltv/yy.php?id=1352475619",
    "一起來看電影吧 1": "http://mmitv.top/pltv/yy.php?id=1354210357",
    "電影超好看 1": "http://mmitv.top/pltv/yy.php?id=29460894",
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
