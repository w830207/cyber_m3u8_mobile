enum TvType {
  normal,
  news,
  movie,
  sport,
}

const Map<TvType, Map> tvMap = {
  TvType.normal: normalMap,
  TvType.news: newsMap,
  TvType.movie: movieMap,
  TvType.sport:sportMap,
};

const Map normalMap = {
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

const Map newsMap = {
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
  "寰宇新聞台灣台": "https://raw.githubusercontent.com/etag2000/IPTV/YTlive/hyxw.m3u8",
  "原住民族電視台":
      "http://streamipcf.akamaized.net/live/_definst_/live_720/chunklist_b1500.m3u8",
  // "原住民族電視台2":"http://streamipcf.akamaized.net/live/_definst_/smil:live.smil/chunklist_b3000.m3u8?cuac=guest&cref=http%3A%2F%2Ftitv.ipcf.org.tw%2F",
  // "原住民族電視台3":"http://streamipcf.akamaized.net/live/_definst_/smil:liveabr.smil/playlist.m3u8",
  "Now 直播331台": "https://api.leonardpark.dev/live/now/331",
  "Now 新聞台": "http://livetv.dnsfor.me:80/channel.4.m3u8",
};

const Map movieMap = {
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
  "明星大片": "http://39.135.138.59:18890/PLTV/88888910/224/3221225716/index.m3u8",
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
  "黑莓電影 5": "http://39.134.116.30:8080/PLTV/88888910/224/3221225769/index.m3u8",
  "黑莓電影 6": "http://39.134.116.30:8080/PLTV/88888910/224/3221225764/index.m3u8",
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
  "芒果樂搜 3": "http://124.232.231.246:6610/000000001001/201600020010/index.m3u8?",
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

const Map sportMap ={
  // "緯來體育 2":"rtmp://9wv7.mine.nu/sat/tv721",
  // "緯來體育 3":"http://218.32.47.179:18563/http/192.168.1.9:8081/hls/67/809/ch28.m3u8",
  // "緯來體育 4":"http://218.32.47.179:18563/.m3u8",
  // "緯來體育 6":"http://198.16.64.10:8278/videolandsport/playlist.m3u8?tid=MA6A1192684511926845&ct=19226&tsum=0b7ca9a61e7371df68108a27dc358c68",
  "緯來體育":"http://123.51.229.65:18509/.m3u8",
  "愛爾達體育1台":"rtmp://9wv7.mine.nu/sat/md051",
  // "愛爾達體育1台":"rtmp://9wv7.mine.nu/sat/md041",
  "愛爾達體育2台":"http://198.16.64.10:8278/eltasport2_twn/playlist.m3u8?tid=MCDC5093685750936857&ct=19225&tsum=592e009b281ea2abc43b21768cb1bec0",
  "博斯運動":"rtmp://9wv7.mine.nu/sat/md011",
  "博斯運動2 ":"http://198.16.64.10:8278/bosisport2_twn/playlist.m3u8?tid=MDBD8051535180515351&ct=19225&tsum=807423eaabbb4cc188843b81db9cd79f",
  "博斯魅力":"http://198.16.64.10:8278/bosisport1_twn/playlist.m3u8?tid=MF6F6900999569009995&ct=19225&tsum=1d6e966a02c88867f2a3234f3a980b7d",
  "博斯網球":"rtmp://9wv7.mine.nu/sat/md021",
  // "博斯網球 2":"http://198.16.64.10:8278/bositennis_twn/playlist.m3u8?tid=MA9A5922328659223286&ct=19225&tsum=c83f112dbae37be6d20618138fddcf77",
  "博斯高球":"http://198.16.64.10:8278/bosigolf2_twn/playlist.m3u8?tid=MF5F9848925298489252&ct=19225&tsum=2600464749aadbcd55d1c32ec071e36e",
  "ELEVEN體育1台":"rtmp://9wv7.mine.nu/sat/tv731",
  // "ELEVEN體育1台 3":"http://50.7.220.74:8278/golfchannel_twn/playlist.m3u8?tid=m43df9270caf7&ct=18335&tsum=3bcc02e810e7073b86bb40d392e95f23",
  // "ELEVEN體育1台 4":"http://198.16.64.10:8278/bs181_japan/playlist.m3u8?tid=MEBE3981057839810578&ct=19225&tsum=d6fa49cd7b45b3bea924647730100283",
  "ELEVEN體育2台":"rtmp://9wv7.mine.nu/sat/tv741",
  // "ELEVEN體育2台 5":"http://61.221.81.93:8078/hls/26/80/esport2.m3u8",
  "ELEVEN 1":"http://198.16.64.10:8278/bs181_japan/playlist.m3u8?tid=MEBE3981057839810578&ct=19225&tsum=d6fa49cd7b45b3bea924647730100283",
  "ELEVEN 2":"http://198.16.64.10:8278/bsfuji_japan/playlist.m3u8?tid=MEFE1641904216419042&ct=19225&tsum=e49ffeb9a6df295150be1cd8f9b0ea30",
  "ELEVEN 3":"http://cineapp.org:8000/Fernando/Fernando/7453",
  "ELEVEN 6":"http://cineapp.org:8000/Fernando/Fernando/7456",
  "智林體育":"http://58.99.33.16:1935/liveedge17/live_122_3.stream/chunklist.m3u8",
  "咪咕體育":"http://111.13.42.231/PLTV/88888888/224/3221226397/1.m3u8",
  "咪咕視頻":"http://39.134.115.163:8080/PLTV/88888910/224/3221226243/index.m3u8",
  // "五星體育 1":"http://112.25.48.70/live/program/live/ssty/4000000/mnf.m3u8",
  // "五星體育 2":"http://125.74.5.39/liveplay-kk.rtxapp.com/live/program/live/ssty/4000000/mnf.m3u8",
  "五星體育":"http://112.25.48.69/live/program/live/ssty/4000000/mnf.m3u8",
  "新視覺 HD":"http://183.207.255.188/live/program/live/xsjhd/4000000/mnf.m3u8",
  // "新視覺 HD 2":"http://183.207.255.188/live/program/live/xsjhd/4000000/mnf.m3u8?zshangd",
  // "NewTV超級體育 1":"http://39.134.115.163:8080/PLTV/88888910/224/3221225622/index.m3u8",
  "NewTV超級體育 2":"http://39.135.138.59:18890/PLTV/88888910/224/3221225622/index.m3u8",
  // "NewTV超級體育 3":"http://39.135.138.60:18890/PLTV/88888910/224/3221225648/index.m3u8",
  // "NewTV超級體育 4":"http://39.134.115.221:8080/PLTV/88888910/224/3221225622/index.m3u8",
  // "NewTV超級體育 5":"http://39.134.115.221:8080/PLTV/88888910/224/3221225648/index.m3u8",
};
