import 'package:flutter/material.dart';

class TextAnimation extends StatefulWidget {
  Widget child;

  TextAnimation({Key? key, required this.child}) : super(key: key);

  @override
  _TextAnimationState createState() => _TextAnimationState();
}

class _TextAnimationState extends State<TextAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      child: widget.child,
      builder: (context, child) {
        return Opacity(
          opacity: _controller.value,
          child: child,
        );
      },
    );
  }
}


// const Text(
//         "Hello",
//         style: TextStyle(
//           fontSize: 45.0,
//           fontWeight: FontWeight.w400
//         ),