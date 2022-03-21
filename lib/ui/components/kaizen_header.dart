import 'package:flutter/material.dart';

import '../constants/kaizen_theme.dart';

class KaizenHeader extends StatefulWidget {
  final IconData? iconRight;
  final IconData iconLeft;
  final String title;
  final bool isMenu;
  final AssetImage? image;
  final Function()? onClickIcon;

  const KaizenHeader({
    required this.title,
    required this.isMenu,
    this.iconRight,
    this.image,
    this.onClickIcon,
    Key? key,
  })  : iconLeft = isMenu ? Icons.menu : Icons.arrow_back,
        super(key: key);

  @override
  State<KaizenHeader> createState() => _KaizenHeaderState();
}

class _KaizenHeaderState extends State<KaizenHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          top: largePadding,
          bottom: extraMediumPadding,
          right: mediumPadding,
          left: mediumPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon on the left
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: InkWell(
              onTap: widget.onClickIcon,
              child: Icon(
                widget.iconLeft,
                color: kaizenWhite,
              ),
            ),
          ),
          const Spacer(),
          // Text On the Middle
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              "DASHBOARD",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: kaizenWhite),
            ),
          ),
          const Spacer(),
          // Notifications | Search | profile_pic Button
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.only(top: 10.0, left: 6.0),
              height: 45,
              width: 50,
              decoration: BoxDecoration(
                color: kaizenGrey.withOpacity(0.4),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(defaultPadding),
                  topRight: Radius.circular(defaultPadding),
                  bottomLeft: Radius.circular(defaultPadding),
                  bottomRight: Radius.circular(defaultPadding),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: 6.0,
                    child: Text(
                      "2",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(color: kaizenOrange),
                    ),
                  ),
                  Positioned(
                    bottom: 5.0,
                    child: Icon(
                      Icons.notifications_active,
                      color: kaizenOrange,
                      size: extraMediumPadding,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
