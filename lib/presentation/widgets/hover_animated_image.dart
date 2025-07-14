import 'dart:ui'; // for lerpDouble
import 'package:flutter/material.dart';
import 'package:portfolio_final/core/services/asset_path_resolver.dart';
import 'package:portfolio_final/presentation/widgets/app_image_rederer.dart';

class HoverAnimatedImage extends StatefulWidget {
  final AppAssetKey assetKey;
  final double width;
  final double height;
  final bool isCircular;
  final BorderRadiusGeometry? borderRadius;
  final double scale;

  const HoverAnimatedImage({
    required this.assetKey,
    required this.width,
    required this.height,
    super.key,
    this.isCircular = false,
    this.borderRadius,
    this.scale = 1.0,
  });

  @override
  State<HoverAnimatedImage> createState() =>
      _HoverGrayscaleImageRendererState();
}

class _HoverGrayscaleImageRendererState extends State<HoverAnimatedImage> {
  bool _hovered = false;

  static const List<double> _grayscaleMatrix = <double>[
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0.2126,
    0.7152,
    0.0722,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
  ];

  static const List<double> _identityMatrix = <double>[
    1,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
  ];

  List<double> _lerpMatrix(List<double> a, List<double> b, double t) {
    return List.generate(a.length, (i) => a[i] + (b[i] - a[i]) * t);
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: TweenAnimationBuilder<double>(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
        tween: Tween<double>(begin: 0.0, end: _hovered ? 1.0 : 0.0),
        builder: (context, t, _) {
          final scaleValue = lerpDouble(1.0, widget.scale, t)!;
          final matrix = _lerpMatrix(_grayscaleMatrix, _identityMatrix, t);

          return Transform.scale(
            scale: scaleValue,
            child: ColorFiltered(
              colorFilter: ColorFilter.matrix(matrix),
              child: AppImageRenderer(
                sourceType: AppImageSourceType.asset,
                assetKey: widget.assetKey,
                width: widget.width,
                height: widget.height,
                isCircular: widget.isCircular,
                borderRadius: widget.borderRadius,
                scale: widget.scale,
              ),
            ),
          );
        },
      ),
    );
  }
}
