import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Theme/size_config.dart';
import 'package:portfolio/components/mobile_desktop_view_builder.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:portfolio/utils/hover_extensions.dart';

class HeaderView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {


    return  MobileDesktopViewBuilder(
        showMobile: true,
        mobileView: HeaderMobileView(),
        desktopView: HeaderDesktopView());

  }
}

class HeaderDesktopView extends StatefulWidget {

  @override
  _HeaderDesktopViewState createState() => _HeaderDesktopViewState();
}

class _HeaderDesktopViewState extends State<HeaderDesktopView> {
  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final isSmall = width <width*0.7;
    final imageWidth = width *0.47 ;

    double w = SizeConfig.heightMultiplier;
    double h = SizeConfig.widthMultiplier;

    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.27*w),
        child: Stack(
          children: [

         // padding: EdgeInsets.only(top:  8.03*h,left:  35.6*w),

             Padding(
               padding: EdgeInsets.only(top:  20.03*h,left:  15.6*w),
               child: Container(
                      width:32.43*w,
                      height:40.54*h,
                  //  color: Colors.purple,
                    child: Image.asset('images/cpuimage.png')),
             ),


            Positioned(
            //  top: 32.03*h,
            //  left: 60.65*w,
              child: Padding(
                padding: EdgeInsets.only(top:  60.03*h,left:  25.6*w),
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7.0),),
                    ),
                    backgroundColor:  Colors.lime,
                  ),
                  onPressed: (){

                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical:1.63*h ,
                        horizontal:0.78*w),
                    child: Text('Download Resume',
                      style: TextStyle(
                          fontSize:2.62*h,
                          color: Colors.white,
                          fontFamily: 'Hack'
                      ),
                    ),
                  ),
                ).showCursorOnHover,
              ),
            ),


            Positioned(
              top: 53.71*h,
              left:47.54*w,
              child: Container(child: Image.asset('/images/usb.png',
                height: 18.0*h,
                width:24.59*w,)),
            ),

            Positioned(
               top: 27.71*h,
               left:44.54*w,
              child: Container(
                color: Colors.transparent,
                child: Image.asset('/images/myimage.png',
                  height:29.53*h,
                  width: 30.0*w,
                ),
              ),
            ),



        /*    Positioned(
              top: 100,
              child: Container(
                  width: 500,
                  height: 300,
                  child: HeaderBody(false)),
            ),*/
          ],
        ),
      ),
    );
  }
}


class HeaderMobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    
    return Container(
      height: height * 0.9,
      width: width,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 40.0),
        child: Column(
          children: [

            Expanded(
              child:  Image.asset('/images/myimage.png',
              ),
            ),
            Spacer(),
            Container(
                width: 650,
                height: 200,
                child: Image.asset('images/cpuimage.png')),

            TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7.0),),
                ),
                backgroundColor:  Colors.lime,
              ),
              onPressed: (){

              },
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical:false ?? false ? 8.0 :8.0 ,
                    horizontal: false ?? false ?8.0 : 8.0),
                child: Text('Download Resume',
                  style: TextStyle(
                      fontSize:false ?? false ? 13.0 :13.0,
                      color: Colors.white,
                      fontFamily: 'Hack'
                  ),
                ),
              ),
            ).showCursorOnHover,
           // HeaderBody(true,),
          ],
        ),
      ),
    );
  }
}

class HeaderBody extends StatelessWidget {

   final bool isMobile;

   const HeaderBody(this.isMobile);


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: AutoSizeText(' I\'m a Mobile',
            style: TextStyle(fontFamily: 'fantasquesansmono',
            fontSize: 35
            ),
            maxLines: 1,
          ),
        ),
        Center(
          child: AutoSizeText('Developer </>',
            style: TextStyle(
                fontFamily: 'fantasquesansmono',
              fontSize: 35.0,
            ),
            maxLines: 1,
          ),
        ),
        SizedBox(
          height:isMobile ?? false ? 20.0 : 37.0,),
        AutoSizeText('I have three years of experience in Software Field of which 1.5 years into Flutter '
            'and 1.5 years in Java.I have developed a few apps in Flutter.I have worked on REST API,MySql,Firebase.'
            'I\'m good with state management such as BLOC,Providers,GetX.',
          style: TextStyle(
              fontSize: 17.0,
            fontFamily: 'Hack'
          ),
          maxLines: 6,
        ),
        SizedBox(
          height:isMobile ?? false ? 20.0 : 40.0,
        ),

       /* Center(
          child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(7.0),),
              ),
              backgroundColor:  Colors.lime,
            ),
            onPressed: (){

            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical:isMobile ?? false ? 10.0 :17.0 ,
                  horizontal: isMobile ?? false ?8.0 : 15.0),
              child: Text('Download Resume',
                style: TextStyle(
                  fontSize:isMobile ?? false ? 16.0 :18.0,
                  color: Colors.white,
                  fontFamily: 'Hack'
                ),
              ),
            ),
          ).showCursorOnHover,
        ),*/
      ],
    );
  }
}
