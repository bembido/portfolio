import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/size.dart';
// import 'package:portfolio/constants/skill_items.dart';
// import 'package:portfolio/utils/project_utils.dart';
import 'package:portfolio/widgets/contact_section.dart';
// import 'package:portfolio/widgets/custom_textfield.dart';
// import 'package:portfolio/constants/nav_items.dart';
// import 'package:portfolio/styles/style.dart';
import 'package:portfolio/widgets/drawer_mobile.dart';
import 'package:portfolio/widgets/footer.dart';
import 'package:portfolio/widgets/header_desktop.dart';
import 'package:portfolio/widgets/header_mobile.dart';
import 'package:portfolio/widgets/main_desktop.dart';
import 'package:portfolio/widgets/main_mobile.dart';
// import 'package:portfolio/widgets/project_card.dart';
import 'package:portfolio/widgets/projects_section.dart';
import 'package:portfolio/widgets/skills_desktop.dart';
import 'package:portfolio/widgets/skills_mobile.dart';
// import 'package:portfolio/widgets/site_logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth >= kMinDesktopWidht
              ? null
              : DrawerMobile(
                  onNavItemTap: (int navIndex) {
                    scrollToSection(navIndex);
                    Scaffold.of(context).closeEndDrawer();
                  },
                ),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: .vertical,
            child: Column(
              children: [
                SizedBox(key: navbarKeys[0]),
                //Main
                if (constraints.maxWidth >= kMinDesktopWidht)
                  HeaderDesktop(
                    onNavMenuTap: (int navIndex) {
                      scrollToSection(navIndex);
                    },
                  )
                else
                  Builder(
                    builder: (context) => HeaderMobile(
                      onLogoTap: () {},
                      onMenuTap: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                    ),
                  ),

                if (constraints.maxWidth >= kMinDesktopWidht)
                  MainDesktop()
                else
                  MainMobile(),

                //Skills
                Container(
                  key: navbarKeys[1],
                  // height: 500,
                  width: screenWidth,
                  padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                  color: CustomColor.bgLight1,
                  child: Column(
                    mainAxisSize: .min,
                    children: [
                      //title
                      Text(
                        'What I can do',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: .bold,
                          color: CustomColor.whitePrimary,
                        ),
                      ),
                      SizedBox(height: 50),

                      //platforms and skills
                      if (constraints.maxWidth >= kMedDesktopWidht)
                        SkillsDesktop()
                      else
                        SkillsMobile(),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                //Projects
                ProjectsSection(
                  key: navbarKeys[2],
                ),
                SizedBox(height: 30),

                //Contact
                ContactSection(
                  key: navbarKeys[3],
                ),

                SizedBox(height: 30),

                //Footer
                Footer(),
              ],
            ),
          ),
        );
      },
    );
  }

  void scrollToSection(int navIndex) {
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
