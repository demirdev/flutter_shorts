import 'dart:async';

import 'package:flutter/material.dart';

class CountDown extends StatefulWidget {
  const CountDown(
      {Key? key, required this.durationInSeconds, required this.onEnd})
      : super(key: key);

  final int durationInSeconds;
  final Widget onEnd;

  @override
  State<CountDown> createState() => _CountDownState();
}

class _CountDownState extends State<CountDown> {
  late Timer timer;

  int reamingSeconds = 0;

  @override
  void initState() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        reamingSeconds -= 1;
        if (reamingSeconds == 0) {
          timer.cancel();
        }
        print(reamingSeconds);
      });
    });
    reamingSeconds = widget.durationInSeconds;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.displayLarge;

    if (reamingSeconds == 0) {
      return widget.onEnd;
    }
    return Center(
      child: Container(
        child: Text('$reamingSeconds', style: textStyle),
      ),
    );
  }
}

class TestCountDown extends StatelessWidget {
  const TestCountDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.displayLarge;
    return Center(
      child: CountDown(
        durationInSeconds: 10,
        onEnd: Text(
          'END',
          style: textStyle,
        ),
      ),
    );
  }
}
