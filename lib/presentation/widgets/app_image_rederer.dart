import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_final/core/services/asset_path_resolver.dart';

enum AppImageSourceType {
  network,
  asset,
}

class AppImageRenderer extends StatefulWidget {
  final AppImageSourceType sourceType;
  final String? url;
  final AppAssetKey? assetKey;

  final double? width;
  final double? height;
  final BoxFit fit;
  final Alignment alignment;
  final Color? tintColor;
  final BorderRadiusGeometry? borderRadius;
  final bool isCircular;
  final Widget? fallback;
  final double? scale;

  // Hover color lerp support
  final bool lerpColorOnHover;
  final Color? beginColor;
  final Color? endColor;
  final BlendMode blendMode;
  final ValueChanged<bool>? onHover;

  // Re-added
  final ColorFilter? colorFilter;

  const AppImageRenderer({
    required this.sourceType,
    super.key,
    this.url,
    this.assetKey,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.alignment = Alignment.center,
    this.tintColor,
    this.borderRadius,
    this.isCircular = false,
    this.fallback,
    this.scale,
    this.lerpColorOnHover = false,
    this.beginColor,
    this.endColor,
    this.blendMode = BlendMode.modulate,
    this.onHover,
    this.colorFilter,
  }) : assert(
          (sourceType == AppImageSourceType.network &&
                  url != null &&
                  assetKey == null) ||
              (sourceType == AppImageSourceType.asset &&
                  assetKey != null &&
                  url == null),
          'Pass only `url` for network images and only `assetKey` for asset images.',
        );

  @override
  State<AppImageRenderer> createState() => _AppImageRendererState();
}

class _AppImageRendererState extends State<AppImageRenderer> {
  bool _isHovered = false;

  void _handleHover(bool hovering) {
    if (_isHovered != hovering) {
      setState(() => _isHovered = hovering);
      widget.onHover?.call(hovering);
    }
  }

  @override
  Widget build(BuildContext context) {
    final shouldAnimate = widget.lerpColorOnHover &&
        widget.beginColor != null &&
        widget.endColor != null &&
        kIsWeb;

    if (shouldAnimate) {
      return MouseRegion(
        onEnter: (_) => _handleHover(true),
        onExit: (_) => _handleHover(false),
        child: TweenAnimationBuilder<Color?>(
          duration: const Duration(milliseconds: 300),
          tween: ColorTween(
            begin: widget.beginColor,
            end: _isHovered ? widget.endColor : widget.beginColor,
          ),
          builder: (_, animatedColor, __) {
            final hoverFilter = animatedColor != null
                ? ColorFilter.mode(animatedColor, widget.blendMode)
                : null;

            return _buildImage(colorFilter: hoverFilter);
          },
        ),
      );
    }

    // Use explicitly passed colorFilter if provided
    final effectiveFilter = widget.colorFilter ??
        (widget.tintColor != null
            ? ColorFilter.mode(widget.tintColor!, widget.blendMode)
            : null);

    return _buildImage(colorFilter: effectiveFilter);
  }

  Widget _buildImage({ColorFilter? colorFilter}) {
    Widget image;

    if (widget.sourceType == AppImageSourceType.network) {
      image = CachedNetworkImage(
        imageUrl: widget.url!,
        width: widget.width,
        height: widget.height,
        fit: widget.fit,
        alignment: widget.alignment,
        errorWidget: (_, __, ___) => widget.fallback ?? _defaultFallback(),
        scale: widget.scale ?? 1.0,
      );

      if (colorFilter != null) {
        image = ColorFiltered(colorFilter: colorFilter, child: image);
      }
    } else {
      final path = AssetPathResolverService.resolve(widget.assetKey!);
      final isSvg = AssetPathResolverService.isSvg(widget.assetKey!);

      image = isSvg
          ? SvgPicture.asset(
              path,
              width: widget.width,
              height: widget.height,
              fit: widget.fit,
              alignment: widget.alignment,
              colorFilter: colorFilter,
            )
          : Image.asset(
              path,
              width: widget.width,
              height: widget.height,
              fit: widget.fit,
              alignment: widget.alignment,
              colorBlendMode: colorFilter != null ? widget.blendMode : null,
              scale: widget.scale,
            );

      if (!isSvg && colorFilter != null) {
        image = ColorFiltered(colorFilter: colorFilter, child: image);
      }
    }

    if (widget.isCircular) {
      image = ClipOval(child: image);
    } else if (widget.borderRadius != null) {
      image = ClipRRect(borderRadius: widget.borderRadius!, child: image);
    }

    return image;
  }

  Widget _defaultFallback() => Icon(
        Icons.broken_image,
        size: widget.width ?? 24,
        color: Colors.grey,
      );
}
