import 'package:flutter/material.dart';
import 'package:shadow_boxing/gen/assets.gen.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onTap,
    this.icon,
  });

  final String text;
  final Function()? onTap;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Assets.images.buttonBg.provider(),
            fit: BoxFit.fill,
          ),
        ),
        width: MediaQuery.of(context).size.width * 0.7,
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 24,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: icon ?? Container(),
            ),
          ],
        ),
      ),
    );
  }
}
