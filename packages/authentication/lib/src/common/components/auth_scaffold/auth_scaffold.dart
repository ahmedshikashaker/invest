import 'dart:math';

import 'package:kib_design_system/kib_design_system.dart';
import 'package:flutter/material.dart';
import 'package:invest_common/common.dart';

import '../../../../authentication.dart';

class AuthScaffold extends StatelessWidget {
  const AuthScaffold({
    super.key,
    required this.title,
    this.subtitle,
    this.titleTextStyle,
    this.subtitleTextStyle,
    this.body,
    this.bottom,
  });

  final String title;
  final String? subtitle;
  final AppTextStyle? titleTextStyle;
  final AppTextStyle? subtitleTextStyle;
  final Widget? body;
  final Widget? bottom;

  @override
  Widget build(BuildContext context) {
    final effectiveTitleTextStyle =
        titleTextStyle ?? context.authScaffoldTheme.properties.titleTextStyle;

    final effectiveSubtitleTextStyle = subtitleTextStyle ??
        context.authScaffoldTheme.properties.subtitleTextStyle;

    return AppScaffold(
      body: AppContainer(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              context.authScaffoldTheme.properties.imagePath,
              package: AuthModuleImages.brandingAssetPackage,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverPadding(
                      padding: AppEdgeInsets.symmetric(
                        horizontal: AppGapSize.m,
                      ).toEdgeInsets(
                        context.tokens,
                      ),
                      sliver: SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppContainer(
                              padding: AppEdgeInsets.symmetric(
                                vertical: AppGapSize.xs,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: AppIcon(
                                      icon: Assets.icons.arrowBack,
                                      size: context.spacing.xl,
                                      matchTextDirection: true,
                                      color: context.colors.textReversed,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            AppGap.xl(),
                            AppText(
                              title,
                              style: effectiveTitleTextStyle,
                            ),
                            if (subtitle != null) AppGap.xs(),
                            if (subtitle != null)
                              AppText(
                                subtitle ?? '',
                                style: effectiveSubtitleTextStyle,
                              ),
                            body ?? SizedBox(),
                          ],
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: AppEdgeInsets.symmetric(
                        horizontal: AppGapSize.m,
                      ).toEdgeInsets(
                        context.tokens,
                      ),
                      sliver: SliverFillRemaining(
                        hasScrollBody: false,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: max(
                              context.spacing.m,
                              MediaQuery.of(context).padding.bottom,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: bottom ?? SizedBox(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
