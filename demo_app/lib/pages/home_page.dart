import 'package:demo_app/constants/colors.dart';
import 'package:demo_app/constants/size.dart';
import 'package:demo_app/constants/sns_links.dart';
import 'package:demo_app/widgets/contact_section.dart';
import 'package:demo_app/widgets/drawer_mobile.dart';
import 'package:demo_app/widgets/footer.dart';
import 'package:demo_app/widgets/header_desktop.dart';
import 'package:demo_app/widgets/header_mobile.dart';
import 'package:demo_app/widgets/main_desktop.dart';
import 'package:demo_app/widgets/main_mobile.dart';
import 'package:demo_app/widgets/project_section.dart';
import 'package:demo_app/widgets/skills_desktop.dart';
import 'package:demo_app/widgets/skills_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:js' as js;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys=List.generate(4, (index) => GlobalKey());


  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth>=kMinDesktopWidth? null : DrawerMobile(onNavItemTap: (int navIndex){
            //call func
            scaffoldKey.currentState?.closeEndDrawer();
            scrollToSection(navIndex);
          },),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(key: navbarKeys.first),
                // MAIN
                if(constraints.maxWidth>=kMinDesktopWidth)
                  HeaderDesktop(onNavMenuTap: (int navIndex){
                    //call func
                    scrollToSection(navIndex);
                  },)
                else
                  HeaderMobile(
                    onLogoTap: () {},
                    onMenuTap: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
                
                if(constraints.maxWidth>=kMinDesktopWidth)
                 const MainDesktop()
                else
                  const MainMobile(),
                  
                
                // SKILLS
                Container(
                  key: navbarKeys[1],
                  width: screenWidth,
                  padding: EdgeInsets.fromLTRB(25, 20, 25, 65),
                  color: CustomColor.bgLight1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // title
                      const Text(
                        "What I can do",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                        ),
                      ),
                      const SizedBox(height: 50),
                      
                      //platforms
                      if(constraints.maxWidth>=kMedDesktopWidth)
                      const SkillsDesktop()
                      else
                      const SkillsMobile(),
            
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                    
                // PROJECTS
                ProjectsSection(key: navbarKeys[2],),
            
                const SizedBox(height: 30),
                // CONTACT
                ContactSection(key: navbarKeys[3],),
                const SizedBox(height: 15),
                    
                 // FOOTER
                const Footer(),
                const SizedBox(height: 10),
              ],
            ),
          )
        );
      }
    );
  }
  OutlineInputBorder get getInputBorder{
    return OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none);
  }

  void scrollToSection(int navIndex){
    if(navIndex == 4){
      //open blog
      js.context.callMethod('open', [SnsLinks.blog]);
      return;
    }
    final key=navbarKeys[navIndex];
    Scrollable.ensureVisible(key.currentContext!,duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}

