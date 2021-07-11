import 'package:flutter/material.dart';
import 'package:portfolio/Theme/size_config.dart';
import 'package:portfolio/components/mobile_desktop_view_builder.dart';

class ExperienceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MobileDesktopViewBuilder(
        showMobile: true,
        mobileView: ExperienceMobileView(),
        desktopView: ExperienceDesktopView());
  }
}

class ExperienceDesktopView extends StatelessWidget {
  double w = SizeConfig.heightMultiplier;
  double h = SizeConfig.widthMultiplier;

  final thirdExperience = experiences.last;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 111.14 * h,
      width: 76.56 * w,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.66 * w),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Experience {',
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
                    for(var index=0;index<2;index++)
                      Expanded(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ExperienceContainer(experience: experiences.elementAt(index),color: index==1?Colors.amber:Colors.indigo,),
                      )),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ExperienceContainer(experience: thirdExperience,color: Colors.purple,),
                ),


            ]),
      ),
    );
  }
}

class ExperienceContainer extends StatelessWidget {
  const ExperienceContainer({
    Key? key,
    required this.experience,
    required this.color,
  }) : super(key: key);

  final Color color;

  final ExperienceInfo experience;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: color,

        ),
        borderRadius: BorderRadius.circular(3.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(experience.company,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Hack'
          ),
          ),
          Text(experience.timeline,
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Hack'
            ),
          ),
          for(final item in experience.descriptions)
          Text(item,
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Hack'
            ),
          ),
        ],
      ),
    );
  }
}

class ExperienceMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ExperienceInfo {

  final String company;
  final String timeline;
  final List<String> descriptions;

  ExperienceInfo(
      {required this.company, required this.timeline, required this.descriptions});
}
  final experiences = [
    ExperienceInfo(
        company: 'Software Developer @ TCS',
        timeline: 'June 2018 -present',
        descriptions:[
          '-Worked on the product NETACT from NOKIA',
          '-Java Developer Responsible for Creating Adaptors',
          '-Worked in a team of 20-25 developers',
        ],
    ),
    ExperienceInfo(
        company: 'Flutter Developer @ Nokia project',
        timeline: 'January 2020 -April 2020',
        descriptions:[
              '-Worked on the Internal Ticket Processing Application',
              '-FrontEnd Flutter Developer for the Application',
              '-Worked in a team of 3 developers',
        ]

    ),
    ExperienceInfo(
        company: 'Paisa Takatak Mobile App',
        timeline: 'January 2021 -April 2021',
        descriptions:[
              '-Worked on the Paisa Takatak Loan App',
              '- Flutter Developer for the Application',
              '-Worked in a team of 3 developers',
        ]
    ),
  ];

