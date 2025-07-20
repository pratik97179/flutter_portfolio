import 'package:flutter/material.dart';
import 'package:portfolio_final/core/design/design_system.dart';
import 'package:sizer/sizer.dart';

class RoutingBar extends StatelessWidget {
  const RoutingBar({
    required this.innerVerticalPadding,
    required this.outerSpacing,
    required bool isScrolled,
    required List<String> items,
    super.key,
  })  : _isScrolled = isScrolled,
        _items = items;

  final double innerVerticalPadding;
  final double outerSpacing;
  final bool _isScrolled;
  final List<String> _items;

  @override
  Widget build(BuildContext context) {
    final palette = context.palette.designColors;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      padding: EdgeInsets.symmetric(
        vertical: 1.h + innerVerticalPadding,
        horizontal: 1.w,
      ),
      margin: EdgeInsets.only(top: outerSpacing),
      width: _isScrolled ? 100.w : null,
      decoration: BoxDecoration(
        color: palette.resolve(ColorRole.surfaceLight),
        borderRadius: BorderRadius.circular(_isScrolled ? 0 : 100),
        border: Border.all(
          color: palette.resolve(ColorRole.border),
          width: 2.sp,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(_items.length, (index) {
          return Container(
            width: 5.w,
            alignment: Alignment.center,
            child: AppText(
              _items[index],
              token: TextToken.body2,
              hoverColorRole: ColorRole.text,
              hoverFontWeight: FontWeight.w500,
              allowHover: true,
              onTap: () {},
            ),
          );
        }),
      ),
    );
  }
}
