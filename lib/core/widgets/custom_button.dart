import 'package:flutter/material.dart';
import 'package:flutter_bookly/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.fontSize,
    this.onPressed,
  });
  final double? fontSize;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 48,
        child: TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
                backgroundColor: backgroundColor,
                shape: RoundedRectangleBorder(
                    borderRadius: borderRadius ?? BorderRadius.circular(16))),
            child: Text(text,
                style: Styles.textStyle18.copyWith(
                    color: textColor,
                    fontWeight: FontWeight.w900,
                    fontSize: fontSize))),
      ),
    );
  }
}
