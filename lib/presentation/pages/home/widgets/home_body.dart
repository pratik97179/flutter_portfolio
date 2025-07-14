import 'package:flutter/material.dart';
import 'package:portfolio_final/core/services/asset_path_resolver.dart';
import 'package:portfolio_final/presentation/widgets/hover_animated_image.dart';
import 'package:portfolio_final/utils/extensions.dart';
import 'package:sizer/sizer.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 20.h),
          width: double.infinity,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            padding: EdgeInsets.symmetric(
              vertical: 10.h,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.sp),
              color: context.theme.palette.surfaceLight,
              border: Border.all(
                color: context.theme.palette.borderColor,
                width: 2.sp,
              ),
            ),
            child: Column(
              children: <Widget>[
                HoverAnimatedImage(
                  assetKey: AppAssetKey.profileImage,
                  width: 45.sp,
                  height: 45.sp,
                  isCircular: true,
                  scale: 1.3,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.h),
                  child: Text(
                    'Software Engineer',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 21.sp,
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
