import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/navigation_bar/navigation_bar_view.dart';
import 'package:portfolio/project/project_view.dart';
import 'package:portfolio/skills/skills_view.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'Theme/size_config.dart';
import 'desktop/header_view.dart';
import 'drawer/drawer_view.dart';
import 'experience/experince_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints){
          return OrientationBuilder(
            builder: (context,orientation){
              SizeConfig().init(constraints,orientation);
              return  MaterialApp(
                title: 'Jaganathan Suruliraj',
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                  textTheme: TextTheme(
                    headline3:  GoogleFonts.montserrat(
                      color: Colors.black,
                    ),
                    headline4:  GoogleFonts.montserrat(
                      fontSize: 28.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                home: PortfolioView(),
              );
            },
          );
        },
    );
  }
}

class PortfolioView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;

    final ScrollController scrollController = ScrollController(
      initialScrollOffset: 1400,
    );

    return Scaffold(
      endDrawer: DrawerView(),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            NavigationBarView(),
            HeaderView(),
            ProjectView(),
            SkillsView(),
            ExperienceView(),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}




