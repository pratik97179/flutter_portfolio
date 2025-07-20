import 'package:flutter/material.dart';
import 'package:portfolio_final/core/design/design_system.dart';
import 'package:portfolio_final/presentation/pages/app_bar/header_bar.dart';
import 'package:portfolio_final/presentation/pages/home/widgets/introduction_card.dart';
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
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final scrolled = _scrollController.offset > 0;
    if (scrolled != _isScrolled) {
      setState(() => _isScrolled = scrolled);
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double outerSpacing = _isScrolled ? 0 : 1.5.h;
    final double innerVerticalPadding = _isScrolled ? 1.5.h : 0;

    return Scaffold(
      backgroundColor:
          context.palette.designColors.resolve(ColorRole.surface),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            controller: _scrollController,
            child: const IntroductionCard(),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
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
