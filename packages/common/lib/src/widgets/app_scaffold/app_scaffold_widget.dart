import 'dart:math';

import 'package:flutter/material.dart';
import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';

typedef AppFloatingWidgetsBuilder<BuildContext, AnimationController>
    = List<Widget> Function(
  BuildContext context,
  AnimationController animationController,
);

class KIAppScaffold extends StatefulWidget {
  final PreferredCollapsedWidget Function(AnimationController)? appbar;
  final Widget? Function(
    BuildContext context,
    AnimationController animationController,
    ScrollController scrollController,
  ) body;

  final Color? backgroundColor;

  final double? overlapAppbarWithbody;

  final BorderRadiusGeometry? bodyBorderRadius;
  final AppFloatingWidgetsBuilder<BuildContext, AnimationController>?
      floatingChildrenBuilder;

  const KIAppScaffold({
    Key? key,
    this.appbar,
    this.backgroundColor,
    this.overlapAppbarWithbody,
    this.bodyBorderRadius,
    required this.body,
    this.floatingChildrenBuilder,
  }) : super(key: key);

  @override
  _KIAppScaffoldState createState() => _KIAppScaffoldState();
}

class _KIAppScaffoldState extends State<KIAppScaffold>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final effectiveBackgroundColor = widget.backgroundColor ??
        context.appScaffoldTheme.colors.backgroundColor;

    final height = max(
      0.0,
      widget.appbar!(AnimationController(vsync: this)).preferredExpandedHeight -
          148.0,
    );

    return LayoutBuilder(
      builder: (context, constraints) {
        final differance =
            (MediaQuery.of(context).size.height - constraints.maxHeight);

        return AppScaffold.roundedBody(
          extendBody: true,
          withPattern: false,
          maxHeaderHeight: 99 +
              height +
              MediaQuery.of(context).padding.top +
              (differance != 0
                  ? max(
                      MediaQuery.of(context).padding.bottom,
                      context.spacing.m,
                    )
                  : 0),
          minHeaderHeight: 50 +
              MediaQuery.of(context).padding.top +
              (differance != 0
                  ? max(
                      MediaQuery.of(context).padding.bottom,
                      context.spacing.m,
                    )
                  : 0),
          appbarBuilder: (animationController) =>
              widget.appbar!(animationController),
          backgroundColor: effectiveBackgroundColor,
          bodyBuilder: (context, _scrollController, _animationController) =>
              widget.body(
                context,
                _animationController,
                _scrollController,
              ) ??
              Container(),
          floatingChildrenBuilder: widget.floatingChildrenBuilder,
        );
      },
    );
  }
}
