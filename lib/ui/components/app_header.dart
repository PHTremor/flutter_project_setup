import 'package:flutter/material.dart';

import '../constants/app_theme.dart';

class AppHeader extends StatefulWidget {
  final IconData? iconRight;
  final IconData iconLeft;
  final String title;
  final bool isMenu;
  final AssetImage? image;
  final Function()? onClickIcon;

  const AppHeader({
    required this.title,
    required this.isMenu,
    this.iconRight,
    this.image,
    this.onClickIcon,
    Key? key,
  })  : iconLeft = isMenu ? Icons.menu : Icons.arrow_back,
        super(key: key);

  @override
  State<AppHeader> createState() => _AppHeaderState();
}

class _AppHeaderState extends State<AppHeader> {
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
                color: customWhite,
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
                  .copyWith(color: customWhite),
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
                color: customGrey.withOpacity(0.4),
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
                          .copyWith(color: customOrange),
                    ),
                  ),
                  Positioned(
                    bottom: 5.0,
                    child: Icon(
                      Icons.notifications_active,
                      color: customOrange,
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
