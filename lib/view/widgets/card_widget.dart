import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  final List<String> list;
  const CardWidget({
    this.list = const [],
    Key? key,
  }) : super(key: key);

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2.5,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
        ),
        itemCount: widget.list.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(width: 3.0),
            ),
            child: Center(
              child: Text(
                widget.list[index],
                style: const TextStyle(fontSize: 35),
              ),
            ),
          );
        },
      ),
    );
  }
}
