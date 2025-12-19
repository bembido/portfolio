import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 1.2,
      constraints: BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: .spaceEvenly,
        // crossAxisAlignment: .center,
        children: [
          Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .start,
            children: [
              Text(
                "Hi\nI'm Anarbek Sayat\nA Flutter Developer",
                style: TextStyle(
                  height: 1.5,
                  fontSize: 30,
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
                    horizontal: 40,
                    vertical: 20,
                  ),
                ),
                child: Text(
                  'Get in touch',
                  style: TextStyle(
                    fontSize: 18,
                    color: CustomColor.whitePrimary,
                  ),
                ),
              ),
            ],
          ),

          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            child: Image.asset(
              'assets/mainImage.jpeg',
              width: screenWidth / 4,
            ),
          ),
        ],
      ),
    );
  }
}
