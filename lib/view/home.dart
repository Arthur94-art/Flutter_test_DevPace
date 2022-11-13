import 'package:flutter/material.dart';
import 'package:flutter_application/view/widgets/card_widget.dart';
import 'package:flutter_application/view/widgets/logo.dart';

class Home extends StatelessWidget {
  final List<String> list;
  const Home({
    this.list = const [],
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height - 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                const Logo(),
                list.isNotEmpty
                    ? Row(
                        children: <Widget>[
                          Expanded(
                            child: CardWidget(list: list),
                          ),
                        ],
                      )
                    : const SizedBox(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
