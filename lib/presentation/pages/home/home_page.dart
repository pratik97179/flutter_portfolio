import 'package:flutter/material.dart';
import 'package:portfolio_final/presentation/pages/app_bar/header_bar.dart';
import 'package:portfolio_final/presentation/pages/home/widgets/home_body.dart';
import 'package:portfolio_final/utils/extensions.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  bool _isScrolled = false;

  final List<String> _items = ['Home', 'Work', 'Service', 'Blog', 'About'];

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      final scrolled = _scrollController.offset > 0;
      if (scrolled != _isScrolled) {
        setState(() {
          _isScrolled = scrolled;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final double outerSpacing = _isScrolled ? 0 : 1.5.h;
    final double innerVerticalPadding = _isScrolled ? 1.5.h : 0;

    return Scaffold(
      backgroundColor: context.theme.palette.surfaceLight,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            controller: _scrollController,
            child: const HomeBody(),
          ),
          Positioned(
            top: 0,
            child: HeaderBar(
              outerSpacing: outerSpacing,
              innerVerticalPadding: innerVerticalPadding,
              isScrolled: _isScrolled,
              items: _items,
            ),
          ),
        ],
      ),
    );
  }
}
