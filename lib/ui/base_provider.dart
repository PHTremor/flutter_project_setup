

import 'package:flutter/material.dart';
import 'package:project_setup/core/state_managers/a.screen_managers.dart';
import 'package:project_setup/locator.dart';
import 'package:provider/provider.dart';

class BaseScreen<T extends BaseScreenProvider> extends StatefulWidget {
  final Widget Function(BuildContext context, T model, Widget? child)? builder;
  final Function(T)? onModelReady;

   BaseScreen({required this.builder, this.onModelReady});

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends BaseScreenProvider> extends State<BaseScreen<T>> {
  T model = locator<T>();

  @override
  void initState() {
    if (widget.onModelReady != null) {
      widget.onModelReady!(model);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: model,
      child: Consumer<T>(builder: widget.builder!),
    );
  }
}
