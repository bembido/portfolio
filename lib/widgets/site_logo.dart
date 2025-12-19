import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        'Bembido',
        style: TextStyle(
          fontSize: 22,
          fontWeight: .bold,
          decoration: TextDecoration.underline,
          decorationColor: CustomColor.yellowSecondary,
          color: CustomColor.yellowSecondary,
        ),
      ),
    );
  }
}
