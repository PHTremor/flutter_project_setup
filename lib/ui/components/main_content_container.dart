import 'package:flutter/material.dart';

import '../constants/a.constants.dart';

class MainContentContainer extends StatefulWidget {
  final Widget contentWidget;

  const MainContentContainer({
    required this.contentWidget,
    Key? key,
  }) : super(key: key);

  @override
  State<MainContentContainer> createState() => _MainContentContainerState();
}

class _MainContentContainerState extends State<MainContentContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: mediumPadding),
        decoration: const BoxDecoration(
          color: customWhite,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(mediumPadding),
            topRight: Radius.circular(mediumPadding),
          ),
        ),
        child: widget.contentWidget,
      ),
    );
  }
}
