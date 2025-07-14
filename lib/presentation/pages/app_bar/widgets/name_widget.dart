import 'package:flutter/material.dart';
import 'package:portfolio_final/utils/extensions.dart';
import 'package:sizer/sizer.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'PRATIK',
      style: TextStyle(
        fontSize: 13.sp,
        color: context.theme.palette.black,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}