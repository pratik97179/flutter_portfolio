import 'package:flutter/material.dart';
import 'package:portfolio_final/utils/extensions.dart';
import 'package:sizer/sizer.dart';

class ContactButton extends StatelessWidget {
  const ContactButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.sp,
        vertical: 9.sp,
      ),
      decoration: BoxDecoration(
        color: context.theme.palette.black,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        'Contact',
        style: TextStyle(
          fontSize: 11.sp,
          color: context.theme.palette.white,
        ),
      ),
    );
  }
}
