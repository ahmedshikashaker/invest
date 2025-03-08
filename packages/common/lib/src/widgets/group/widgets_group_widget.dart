import 'package:flutter/material.dart';
import 'package:invest_common/common.dart';
import 'package:kib_design_system/kib_design_system.dart';

class KIWidgetsGroup extends StatelessWidget {
  final List<Widget> widgets;
  final int columnCount;

  final AppGapSize? horizontalGapValue;
  final AppGapSize? verticalGapValue;
  final CrossAxisAlignment? crossAxisAlignment;
  final AppEdgeInsets? padding;

  const KIWidgetsGroup.grid({
    required this.widgets,
    required this.columnCount,
    this.horizontalGapValue,
    this.verticalGapValue,
    this.crossAxisAlignment,
    this.padding,
  });

  const KIWidgetsGroup.row({
    required this.widgets,
    AppGapSize? gap,
    this.crossAxisAlignment,
    this.padding,
  })  : this.columnCount = widgets.length,
        this.horizontalGapValue = gap,
        this.verticalGapValue = AppGapSize.none;

  KIWidgetsGroup.list({
    required this.widgets,
    AppGapSize? gap,
    Axis axis = Axis.vertical,
    this.crossAxisAlignment,
    this.padding,
  })  : this.columnCount = 1,
        this.horizontalGapValue = axis == Axis.vertical ? gap : null,
        this.verticalGapValue = axis == Axis.horizontal ? gap : null;

  @override
  Widget build(BuildContext context) {
    final effectiveHorizontalGapValue = horizontalGapValue ??
        context.widgetsGroupTheme.properties.horizontalGapValue ??
        AppGapSize.none;
    final effectiveVerticalGapValue = verticalGapValue ??
        context.widgetsGroupTheme.properties.verticalGapValue ??
        AppGapSize.none;

    final effectivePadding =
        padding ?? context.widgetsGroupTheme.properties.padding;

    final effectiveCrossAxisAlignment = crossAxisAlignment ??
        context.widgetsGroupTheme.properties.crossAxisAlignment ??
        CrossAxisAlignment.start;

    return AppPadding(
      padding: effectivePadding,
      child: Column(
        crossAxisAlignment: effectiveCrossAxisAlignment,
        children: List.generate(
          (widgets.length / columnCount).ceil(),
          (rowIndex) {
            return Row(
              children: List.generate(
                columnCount,
                (columnIndex) {
                  final index = rowIndex * columnCount + columnIndex;
                  if (index >= widgets.length) {
                    return Expanded(child: Container());
                  }
                  return Expanded(
                    child: AppPadding(
                      padding: AppEdgeInsets.only(
                        right: columnIndex < columnCount - 1
                            ? effectiveHorizontalGapValue
                            : AppGapSize.none,
                        bottom:
                            rowIndex < (widgets.length / columnCount).ceil() - 1
                                ? effectiveVerticalGapValue
                                : AppGapSize.none,
                      ),
                      child: widgets[index],
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
