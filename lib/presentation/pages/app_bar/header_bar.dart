import 'package:flutter/material.dart';
import 'package:portfolio_final/main_dev.dart';
import 'package:portfolio_final/presentation/pages/app_bar/widgets/contact_button.dart';
import 'package:portfolio_final/presentation/pages/app_bar/widgets/name_widget.dart';
import 'package:portfolio_final/presentation/pages/app_bar/widgets/routing_bar.dart';
import 'package:portfolio_final/utils/logger.dart';
import 'package:sizer/sizer.dart';

class HeaderBar extends StatelessWidget {
  const HeaderBar({
    required this.outerSpacing,
    required this.innerVerticalPadding,
    required bool isScrolled,
    required List<String> items,
    super.key,
  })  : _isScrolled = isScrolled,
        _items = items;

  final double outerSpacing;
  final double innerVerticalPadding;
  final bool _isScrolled;
  final List<String> _items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.w,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          RoutingBar(
            innerVerticalPadding: innerVerticalPadding,
            outerSpacing: outerSpacing,
            isScrolled: _isScrolled,
            items: _items,
          ),
          Positioned(
            left: 5.w,
            top: 2.h,
            child: const NameWidget(),
          ),
          Positioned(
            right: 5.w,
            top: 1.h,
            child: GestureDetector(
              onTap: () {
                AppLogger.log('object');
                themeModeNotifier.toggle();
              },
              child: const ContactButton(),
            ),
          ),
        ],
      ),
    );
  }
}
