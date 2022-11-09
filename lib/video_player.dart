import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({Key? key, this.url, this.width, this.height})
      : super(key: key);
  final String? url;
  final double? width;
  final double? height;

  @override
  VideoPlayerState createState() => VideoPlayerState();
}

class VideoPlayerState extends State<VideoPlayer> {
  late final FijkPlayer player;

  @override
  void initState() {
    if (widget.url != null) {
      player = FijkPlayer();
      player.setDataSource(
        widget.url!,
        autoPlay: true,
      );
    }
    super.initState();
  }

  @override
  void dispose() {
    if (widget.url != null) player.release();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.url != null
        ? FijkView(
            color: Colors.black,
            width: widget.width,
            player: player,
            fsFit: FijkFit.fill,
          )
        : const Text("無信號源");
  }
}
