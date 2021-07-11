import 'package:flutter/material.dart';
import 'package:portfolio/Theme/size_config.dart';
import 'package:portfolio/components/mobile_desktop_view_builder.dart';
import 'package:portfolio/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return MobileDesktopViewBuilder(
      mobileView: SkillsMobileView(),
      desktopView: SkillsDesktopView(),
      showMobile: true,
    );
  }
}

class SkillsMobileView extends StatelessWidget {

  double h = SizeConfig.heightMultiplier;
  double w = SizeConfig.widthMultiplier;

  final color = ColourAssets.all;
  double paddingValue = 0;
  double paddingValue1 = 0;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            thickness: 3,
          ),
          SizedBox(
            height: 50.0,
          ),
          Text(
            'Skills {',
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(
            height: 50.0,
          ),

          for (var rowIndex = 0;
          rowIndex < skills.length;
          rowIndex++)
          Expanded(
            child: Container(
            //  width: 15.62*w,
            //  padding: EdgeInsets.fromLTRB(0.82*w,1.63*h,0.82*w,1.63*h),
              decoration: BoxDecoration(
                color: color.elementAt(rowIndex),
                border: Border.all(width: 1, color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                skills.elementAt(rowIndex),
                style: TextStyle(
                    fontFamily: 'hack', fontSize: 2.78*h, color: Colors.white),
              ),
            ),
          ),
        /*  Row(
            children: [
              Column(
                children: [
                  for (var rowIndex = 0;
                  rowIndex < skills.length / 2;
                  rowIndex++, paddingValue += 2.47*w)
                    Padding(
                      padding: EdgeInsets.only(left: 8.0 + paddingValue,bottom:1.63*h),
                      child: Container(
                        width: 15.62*w,
                        padding: EdgeInsets.fromLTRB(0.82*w,1.63*h,0.82*w,1.63*h),
                        decoration: BoxDecoration(
                          color: color.elementAt(rowIndex),
                          border: Border.all(width: 1, color: Colors.blueGrey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          skills.elementAt(rowIndex),
                          style: TextStyle(
                              fontFamily: 'hack', fontSize: 2.78*h, color: Colors.white),
                        ),
                      ),
                    ),
                ],
              ),
              Column(
                children: [
                  for (var rowIndex = 4;
                  rowIndex < skills.length;
                  rowIndex++, paddingValue1 += 2.47*w)
                    Padding(
                      padding: EdgeInsets.only(left: 8.0 + paddingValue1,bottom: 1.63*h),
                      child: Container(
                        width: 15.62*w,
                        padding: EdgeInsets.fromLTRB(0.82*w,1.63*h,0.82*w,1.63*h),
                        decoration: BoxDecoration(
                          color: color.elementAt(rowIndex),
                          border: Border.all(width: 1, color: Colors.blueGrey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          skills.elementAt(rowIndex),
                          style: TextStyle(
                              fontFamily: 'hack', fontSize:2.78*h, color: Colors.white),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),*/
          Text(
            '}',
            style: Theme.of(context).textTheme.headline3,
          ),
        ],
      ),
    );
  }
}

class SkillsDesktopView extends StatelessWidget {
  double w = SizeConfig.heightMultiplier;
  double h = SizeConfig.widthMultiplier;

  final color = ColourAssets.all;
  double paddingValue = 0;
  double paddingValue1 = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.only(left: 1.56*w),
      width: kInitWidth,
      color: Colors.white,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Skills {',
          style: TextStyle(
              fontFamily: 'Hack',
              fontSize: 4.18 * h,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 3.27 * h,
        ),

          Row(
            children: [
              Column(
                children: [
              for (var rowIndex = 0;
              rowIndex < skills.length / 2;
                  rowIndex++, paddingValue += 2.47*w)
                 Padding(
                   padding: EdgeInsets.only(left: 8.0 + paddingValue,bottom:1.63*h),
                   child: Container(
                     width: 15.62*w,
                     padding: EdgeInsets.fromLTRB(0.82*w,1.63*h,0.82*w,1.63*h),
                     decoration: BoxDecoration(
                       color: color.elementAt(rowIndex),
                       border: Border.all(width: 1, color: Colors.blueGrey),
                       borderRadius: BorderRadius.circular(5),
                     ),
                     child: Text(
                       skills.elementAt(rowIndex),
                       style: TextStyle(
                           fontFamily: 'hack', fontSize: 2.78*h, color: Colors.white),
                     ),
                   ),
                 ),
              ],
              ),
              Column(
                  children: [
                    for (var rowIndex = 4;
                    rowIndex < skills.length;
                    rowIndex++, paddingValue1 += 2.47*w)
                      Padding(
                        padding: EdgeInsets.only(left: 8.0 + paddingValue1,bottom: 1.63*h),
                        child: Container(
                          width: 15.62*w,
                          padding: EdgeInsets.fromLTRB(0.82*w,1.63*h,0.82*w,1.63*h),
                          decoration: BoxDecoration(
                            color: color.elementAt(rowIndex),
                            border: Border.all(width: 1, color: Colors.blueGrey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            skills.elementAt(rowIndex),
                            style: TextStyle(
                                fontFamily: 'hack', fontSize:2.78*h, color: Colors.white),
                          ),
                        ),
                      ),
                  ],
              ),
            ],
          ),
          Text(
            '}',
            style: TextStyle(
              fontFamily: 'Hack',
              fontSize: 4.18 * h,
            ),
          ),

        SizedBox(
          height: 8.19*h,
        ),

      ]),
    );
  }
}

final skills = [
  'Flutter',
  'Java',
  'Android',
  'C',
  'SQL',
  'Firebase',
  'Agile',
  'Git'
];

class ColourAssets {
  static const Color purple = Colors.purple;
  static const Color redAccent = Colors.redAccent;
  static const Color indigo = Colors.indigo;
  static const Color orangeAccent = Colors.orangeAccent;
  static const Color lime = Colors.lime;
  static const Color amber = Colors.amber;
  static const Color pink = Colors.pink;
  static const Color brown = Colors.brown;

  static const List<Color> all = [
    purple,
    redAccent,
    indigo,
    orangeAccent,
    lime,
    amber,
    pink,
    brown,
  ];
}

class OutLineSkillsContainer extends StatelessWidget {
  final int index;
  final int rowIndex;
  final bool isMobile;

  const OutLineSkillsContainer(
      {Key? key,
      required this.index,
      required this.rowIndex,
      required this.isMobile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final parsedIndex = isMobile ? index : (index * 2) + rowIndex;
    final color = ColourAssets.all;
    return Container(
      width: isMobile ? double.infinity : null,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: color.elementAt((index * 2) + rowIndex),
        border: Border.all(width: 1, color: Colors.blueGrey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        skills.elementAt(parsedIndex),
        style:
            TextStyle(fontFamily: 'hack', fontSize: 17.0, color: Colors.white),
      ),
    );
  }
}
