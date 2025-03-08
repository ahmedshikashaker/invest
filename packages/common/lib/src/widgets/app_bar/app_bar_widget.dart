import 'dart:math';

import 'package:flutter/material.dart';
import 'package:invest_common/common.dart';
import 'package:kib_design_system/components/app_bar/curved_app_bar.dart';
import 'package:kib_design_system/kib_design_system.dart';
import 'package:auto_route/auto_route.dart';

part 'background_widget.dart';
part 'animated_center_title_widget.dart';
part 'back_button_widget.dart';

abstract class PreferredCollapsedWidget implements Widget {
  bool get collapsable => true;

  double? get preferredCollapsedHeight;

  double get preferredExpandedHeight;
}

class KIAppBarWidget extends StatelessWidget
    implements PreferredCollapsedWidget {
  final AnimationController animationController;
  final Widget title;
  final Widget centeredTitle;
  final bool canPop;
  final Widget? backgroundWidget;
  final Widget? backButton;
  final List<Widget>? actions;

  final double height;

  const KIAppBarWidget({
    Key? key,
    required this.animationController,
    required this.title,
    required this.canPop,
    required this.centeredTitle,
    this.actions,
    this.backButton,
    this.backgroundWidget,
    this.height = 148.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final extraSpace = max((height - 148.0), 0.0);
    final effectiveAppBarHeigh = 120.0 + extraSpace;

    return CurvedAppBar.builder(
      context,
      pageTitle: FadeTransition(
        opacity: animationController,
        child: title,
      ),
      canPop: canPop,
      actions: actions ?? const [],
      centerTitle: _AnimatedCenterTitle(
        animationController: animationController,
        child: AppContainer(
          padding: AppEdgeInsets.only(
            top: AppGapSize.m,
          ),
          child: centeredTitle,
        ),
      ),
      backButton: Visibility(
        visible: canPop,
        child: backButton ?? _BackButtonWidget(),
      ),
      height: effectiveAppBarHeigh,
      shapePainter: RealEstatePainter(),
      backgroundWidget: backgroundWidget ?? _BackgroundWidget(),
    );
  }

  @override
  double? get preferredCollapsedHeight => 100;

  @override
  double get preferredExpandedHeight => height;

  @override
  bool get collapsable => true;
}
