
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    this.onPressed,
  });
  final Widget icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
        disabledColor: Theme.of(context).iconTheme.color,
      ),
    );
  }
}
