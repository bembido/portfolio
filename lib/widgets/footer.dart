import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      width: double.maxFinite,
      alignment: .center,
      child: Text(
        'Made with Flutter 3.32',
        style: TextStyle(
          color: CustomColor.whiteSecondary,
          fontWeight: .w400,
        ),
      ),
    );
  }
}
