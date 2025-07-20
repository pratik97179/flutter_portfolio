import 'package:flutter/material.dart';
import 'package:portfolio_final/core/design/variants/font/text_token.dart';
import 'package:portfolio_final/core/design/widgets/app_text.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppText(
      'PRATIK',
      token: TextToken.name,
      onTap: () {},
    );
  }
}
