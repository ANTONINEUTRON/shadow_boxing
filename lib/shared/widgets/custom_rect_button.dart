import 'package:flutter/material.dart';

class CustomRectButton extends StatelessWidget {
  const CustomRectButton({
    super.key,
    required this.text,
    this.onTap,
    this.textStyle,
  });

  final String text;
  final Function()? onTap;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      // width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.tertiary,
          minimumSize: Size.fromHeight(60),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
