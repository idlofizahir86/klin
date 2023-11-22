import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final Color color;
  final Color titleColor;
  final Function() onTap;

  const CustomButton({
    super.key,
    required this.title,
    this.width = double.infinity,
    required this.color,
    required this.onTap,
    required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        width: width,
        height: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Center(
              child: Text(
                title,
                style: boldTextStyle.copyWith(
                  fontSize: 28,
                  color: titleColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
