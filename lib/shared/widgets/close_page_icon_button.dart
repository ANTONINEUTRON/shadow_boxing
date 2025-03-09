import 'package:flutter/material.dart';

import 'custom_icon_button.dart';

class ClosePageIconButton extends StatelessWidget {
  const ClosePageIconButton({
    super.key,
    required this.onTap,
  });

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      icon: const Icon(
        Icons.close,
      ),
      onPressed: onTap,
    );
  }
}
