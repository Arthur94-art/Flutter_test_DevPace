import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application/view/home.dart';

void main() {
  runApp(const Main());
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  late Timer _timer;

  final List<String> _list = [];

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        _timer = Timer.periodic(
          const Duration(seconds: 1),
          (timer) {
            setState(
              () {
                _list.add('Item ${_list.length + 1}');
              },
            );
          },
        );
      },
    );

    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Home(list: _list),
        ),
      ),
    );
  }
}
