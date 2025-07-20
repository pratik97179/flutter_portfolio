import 'package:flutter/material.dart';
import 'package:portfolio_final/core/design/variants/component/button_token.dart';
import 'package:portfolio_final/core/design/widgets/app_button.dart';
import 'package:portfolio_final/utils/theme/theme_mode_notifier.dart';
import 'package:provider/provider.dart';

class ContactButton extends StatelessWidget {
  const ContactButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton(
      label: 'Contact',
      type: ButtonType.pill,
      onPressed: () => context.read<ThemeModeNotifier>().toggleThemeMode(),
    );
  }
}
