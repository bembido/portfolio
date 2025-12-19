import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: screenHeight,
      constraints: BoxConstraints(minHeight: 560),
      child: Column(
        // mainAxisAlignment: .start,
        // crossAxisAlignment: .start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            child: Image.asset(
              'assets/mainImage.jpeg',
              width: screenWidth / 2,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Hi\nI'm Anarbek Sayat\nA Flutter Developer",
            textAlign: .start,
            style: TextStyle(
              height: 1.5,
              fontSize: 24,
              fontWeight: .bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: CustomColor.yellowPrimary,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
            ),
            child: Text(
              'Get in touch',
              style: TextStyle(
                fontSize: 16,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
