import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart' show CustomColor;
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/constants/sns_links.dart';
import 'package:portfolio/widgets/custom_textfield.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          Text(
            'Get in touch',
            style: TextStyle(
              fontWeight: .bold,
              fontSize: 24,
              color: CustomColor.whitePrimary,
            ),
          ),

          SizedBox(height: 50),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 700,
              maxHeight: 100,
            ),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= kMinDesktopWidht) {
                  return buildNameEmailFieldDesktop();
                }

                return buildNameEmailFieldMobile();
              },
            ),
          ),
          SizedBox(height: 15),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: CustomTextfield(
              hintText: 'Your message',
              maxLine: 16,
            ),
          ),

          SizedBox(height: 20),

          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor: CustomColor.whitePrimary,
                  backgroundColor: CustomColor.yellowPrimary,
                  padding: EdgeInsets.symmetric(vertical: 15)
                ),
                child: Text('Get in touch', style: TextStyle(fontSize: 18),),
              ),
            ),
          ),

          SizedBox(height: 30),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 300),
            child: Divider(),
          ),

          SizedBox(height: 15),
          //SNS Icons
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.github]);
                },
                child: Image.asset('assets/github.png', width: 28),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.linkedIn]);
                },
                child: Image.asset('assets/linkedin.png', width: 28),
              ),
              // InkWell(
              //   onTap: () {
              //     js.context.callMethod('open', [SnsLinks.facebook]);
              //   },
              //   child: Image.asset('assets/facebook.png', width: 28),
              // ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.instagram]);
                },
                child: Image.asset('assets/instagram.png', width: 28),
              ),
              // InkWell(
              //   onTap: () {
              //     js.context.callMethod('open', [SnsLinks.telegram]);
              //   },
              //   child: Image.asset('assets/telegram.png', width: 28),
              // ),
            ],
          ),
        ],
      ),
    );
  }

  Row buildNameEmailFieldDesktop() {
    return Row(
      children: [
        Flexible(
          child: CustomTextfield(
            hintText: 'Your name',
          ),
        ),
        SizedBox(width: 15),
        Flexible(
          child: CustomTextfield(
            hintText: 'Your Email',
          ),
        ),
      ],
    );
  }

  Column buildNameEmailFieldMobile() {
    return Column(
      children: [
        Flexible(
          child: CustomTextfield(
            hintText: 'Your name',
          ),
        ),
        SizedBox(height: 15),
        Flexible(
          child: CustomTextfield(
            hintText: 'Your Email',
          ),
        ),
      ],
    );
  }
}
