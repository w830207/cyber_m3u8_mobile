import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({Key? key, required this.show, this.onPressed})
      : super(key: key);
  final bool show;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      mini: true,
      backgroundColor: show ? Colors.red : Colors.black,
      onPressed: onPressed,
      tooltip: '關閉播放器',
      child:
          show ? const Icon(Icons.close) : const Icon(Icons.arrow_back_ios_new),
    );
  }
}
