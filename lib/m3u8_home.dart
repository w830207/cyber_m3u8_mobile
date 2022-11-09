import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'tv_home.dart';
import 'theme/app_theme.dart';
import 'video_player.dart';

class M3u8HomePage extends StatefulWidget {
  const M3u8HomePage({Key? key}) : super(key: key);

  @override
  State<M3u8HomePage> createState() => _M3u8HomePageState();
}

class _M3u8HomePageState extends State<M3u8HomePage> {
  bool show = false;
  TextEditingController tfController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 1.sw,
            height: 1.sh,
            decoration: const BoxDecoration(
              gradient: ColorTheme.gc2,
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(100.r),
                      margin: EdgeInsets.symmetric(horizontal: 100.r),
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 30.0,
                          fontFamily: 'Agne',
                        ),
                        child: AnimatedTextKit(
                          repeatForever: true,
                          pause: const Duration(milliseconds: 2000),
                          animatedTexts: [
                            TypewriterAnimatedText('Enter a m3u8 link'),
                            TypewriterAnimatedText(
                                'And press the "PLAY" button'),
                            TypewriterAnimatedText(
                                'Then you can watch stream video.'),
                            TypewriterAnimatedText(
                                'You can also treat this app as a "tv".'),
                          ],
                          onTap: () {
                            tfController.text = "tv";
                          },
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: ColorTheme.c01.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(60.r),
                        ),
                        padding: EdgeInsets.all(100.r),
                        margin: EdgeInsets.symmetric(horizontal: 100.r),
                        child: TextField(
                          controller: tfController,
                          style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: const InputDecoration(
                              hintStyle: TextStyle(fontStyle: FontStyle.italic),
                              hintText: "enter m3u8 link..."),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: DefaultTextStyle(
                          style: const TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                blurRadius: 50.0,
                                color: Colors.white,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: AnimatedTextKit(
                            repeatForever: true,
                            animatedTexts: [
                              FlickerAnimatedText('PLAY'),
                              FlickerAnimatedText('play'),
                              FlickerAnimatedText('播放'),
                            ],
                            onTap: () {
                              if (tfController.text.toUpperCase() == "TV") {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const TvHomePage()));
                              } else if (tfController.text.isNotEmpty) {
                                setState(() {
                                  show = true;
                                });
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: show,
            child: VideoPlayer(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              url: tfController.text,
            ),
          ),
        ],
      ),
      floatingActionButton: show
          ? FloatingActionButton(
              backgroundColor: Colors.red,
              onPressed: () {
                if (show) {
                  setState(() {
                    show = false;
                  });
                }
              },
              tooltip: '關閉播放器',
              child: const Icon(Icons.close),
            )
          : null,
    );
  }
}
