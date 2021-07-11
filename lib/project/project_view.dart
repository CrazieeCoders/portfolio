import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Theme/size_config.dart';
import 'package:portfolio/components/mobile_desktop_view_builder.dart';


class ProjectItem{
  final String image;
  final String title;
  final String descriptions;
  final List<String> technologies;

  ProjectItem({required this.image,required this.title,required this.descriptions,required this.technologies});

}

final kProjectItems = [ 
  ProjectItem(image: 'images/1.png', title: 'Paisa Tatatak', descriptions: 'An App which provide loans to users based on the user profile', technologies: ['Flutter' , 'REST API']),
  ProjectItem(image: 'images/2.png', title: 'Movie Buzz', descriptions: 'An App which provides list of movies and description of movies based on keyword search', technologies: ['Flutter','REST API']),
  ProjectItem(image: 'images/3.png', title: 'Bullion Rates', descriptions: 'An App which acts as an intermediate platform between gold buyers and sellers', technologies: ['Flutter','Firebase']),
  
];



class ProjectView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MobileDesktopViewBuilder(
        showMobile: true,
        mobileView: ProjectMobileView(),
        desktopView: ProjectDesktopView());

  }
}



class ProjectMobileView extends StatelessWidget {

  double h = SizeConfig.heightMultiplier;
  double w = SizeConfig.widthMultiplier;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4*w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(thickness: 3,),
            Text('Projects',
           style: TextStyle(
             fontFamily: 'Hack',
             fontSize: 4.18*h,
           ),
            ),
            SizedBox(
              height:3.49*h,
            ),
            for (final items in kProjectItems)
              Padding(
                padding: EdgeInsets.fromLTRB(1.6*w,1.39*h,1.6*w,1.39*h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(items.image,
                      height:38.39*h,
                      width: 40*w,
                    ),
                    SizedBox(height: 2.61*h),
                    Text(items.title,
                      style: TextStyle(
                        fontSize: 3.49*h,
                        fontFamily: 'Hack',
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 1.88*h),
                    Text(items.descriptions,
                      style: TextStyle(
                          fontSize:2.96*h,
                          fontFamily: 'Hack',
                      ),
                    ),
                    SizedBox(height: 1.74*h,),
                    Row(
                      children: [
                        for(final tech in items.technologies)
                          Padding(
                            padding: EdgeInsets.only(right:1.6*w),
                            child: Chip(label: Text(tech),),
                          ),
                      ],
                    ),
                    SizedBox(height:8.72*h,),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class ProjectDesktopView extends StatelessWidget {

  double w = SizeConfig.heightMultiplier;
  double h = SizeConfig.widthMultiplier;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 111.14*h,
      width: 76.56*w,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.66*w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Projects {',
            style:TextStyle(
            fontFamily: 'Hack',
            fontSize: 4.59*h,
              fontWeight: FontWeight.bold
        ),),
            SizedBox(
              height: 3.27*h,
            ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (final items in kProjectItems)
              Expanded(
                child: Padding(
                padding:EdgeInsets.fromLTRB(0.625*w,1.31*h,0.625*w,1.31*h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(items.image,
                      height: 52.45*h,
                      width: 21.48*w,
                    ),
                    SizedBox(height: 2.45*h,),
                    Text(items.title,
                      style:TextStyle(
                        fontFamily: 'Hack',
                        fontSize: 3.93*h
                      ),
                    ),
                    SizedBox(height: 1.63*h,),
                    Text(items.descriptions,
                      style: TextStyle(fontSize: 2.78*h),
                    ),
                    SizedBox(height: 1.63*h,),
                    Row(
                      children: [
                        for(final tech in items.technologies)
                          Padding(
                            padding: EdgeInsets.only(right:0.62*w),
                            child: Chip(label: Text(tech),),
                          ),
                      ],
                    ),
                    SizedBox(height: 8.19*h,),
                  ],
                ),
              ),
              ),


          ],
        ),
            Text(' }',
              style:TextStyle(
                  fontFamily: 'Hack',
                  fontSize: 4.59*h,
                  fontWeight: FontWeight.bold
              ),),
          ],
        ),
      ),
    );
  }
}

class ProjectItemBody extends StatelessWidget {

  final items;
  final double h;
  final double w;
  ProjectItemBody({this.items,required this.h,required this.w});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(items.image,
            height:320,
            width: 275,
        ),
        SizedBox(height: 15.0,),
        Text(items.title,
          style: Theme.of(context).textTheme.headline4,
        ),
        SizedBox(height: 10.0,),
        Text(items.descriptions,
          style: TextStyle(fontSize: 17.0),
        ),
        SizedBox(height: 10.0,),
        Row(
          children: [
            for(final tech in items.technologies)
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Chip(label: Text(tech),),
              ),
          ],
        ),
        SizedBox(height: 50.0,),
      ],
    );
  }
}

