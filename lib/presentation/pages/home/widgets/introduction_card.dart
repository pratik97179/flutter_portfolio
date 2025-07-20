import 'package:flutter/material.dart';
import 'package:portfolio_final/core/design/design_system.dart';
import 'package:portfolio_final/core/services/asset_path_resolver.dart';
import 'package:portfolio_final/presentation/widgets/hover_animated_image.dart';
import 'package:sizer/sizer.dart';

class IntroductionCard extends StatelessWidget {
  const IntroductionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 15.h),
          width: double.infinity,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            padding: EdgeInsets.symmetric(
              vertical: 15.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.sp),
              color:
                  context.palette.designColors.resolve(ColorRole.surfaceLight),
              border: Border.all(
                color: context.palette.designColors.resolve(ColorRole.border),
                width: 2.sp,
              ),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 2.h),
                  child: HoverAnimatedImage(
                    assetKey: AppAssetKey.profileImage,
                    width: 45.sp,
                    height: 45.sp,
                    isCircular: true,
                    scale: 1.3,
                  ),
                ),
                Text(
                  'Software Engineer',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 21.sp,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1.h),
                  child: Text(
                    'I craft modern applications and websites built for',
                    style: TextStyle(
                      fontSize: 12.sp,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1.h),
                  child: Text(
                    'speed, design precision, and scalable performance.',
                    style: TextStyle(
                      fontSize: 10.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
