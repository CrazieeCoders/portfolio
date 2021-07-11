import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/Theme/size_config.dart';
import 'package:portfolio/components/mobile_desktop_view_builder.dart';
import 'package:responsive_builder/responsive_builder.dart';


double w = SizeConfig.heightMultiplier;
double h = SizeConfig.widthMultiplier;

 class NavigationBarView extends StatelessWidget {
   @override
   Widget build(BuildContext context) {

     final onPressed = ()=>print('click');
     return MobileDesktopViewBuilder(
         showMobile: true,
         mobileView: NavigationMobileView(),
         desktopView: NavigationDesktopView(onPressed: onPressed,));

   }
 }

class NavigationDesktopView extends StatelessWidget {
  const NavigationDesktopView({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;


    return Container(
      height: 0.1 * height,
      width: width,
      color: Colors.white,

      child: Row(
        children: [
         //  Image.asset('/images/navigation_bar_logo.png'),
          Padding(
            padding: EdgeInsets.only(left: 1.27*w),
            child: Text('import \'Jaganathan Suruliraj\';',
         // style: GoogleFonts.dancingScript(fontSize: 20.0,),
              style: TextStyle(
                fontFamily: 'Hack',
                fontSize: 2.25*h,
              ),


            ),
          ),
          Spacer(),
          for(var item in kNavigationItem)
          Padding(
            padding: EdgeInsets.only(right:1.27*w),
            child: NavigationBarItem(text: item.text,onPressed: onPressed,),
          )
        ],
      ),
    );
  }
}

class NavigationMobileView extends StatelessWidget {
  const NavigationMobileView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: [
          SizedBox(width: 20.0,),
      Text('import \'Jaganathan Suruliraj\';',
        // style: GoogleFonts.dancingScript(fontSize: 20.0,),
        style: TextStyle(
          fontFamily: 'Hack',
          fontSize: 12.0,
        ),),

        Spacer(),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: ()=>Scaffold.of(context).openEndDrawer(),
          ),
        ],
      ),
    );
  }
}

 class NavigationBarItem extends StatelessWidget {

   final text;
   final void Function() onPressed;

   NavigationBarItem({this.text,required this.onPressed});

   @override
   Widget build(BuildContext context) {

     final isSmall = MediaQuery.of(context).size.width < 650;

     return  Container(
       padding: EdgeInsets.only(left: 5*w),
       child: InkWell(
           mouseCursor: MaterialStateMouseCursor.clickable,
           highlightColor: Colors.transparent,
           hoverColor: Colors.transparent,
           splashColor: Colors.transparent,
           onTap:()=>onPressed,
           child: Text(text,style: TextStyle(
             //  fontFamily: 'Basis33',
               fontFamily: 'Hack',
               fontSize:2.56*h,
             decoration: TextDecoration.underline,
           ),)),
     );
   }
 }

 class NavigationItem{
  final String text;

  NavigationItem(this.text);
 }

 final kNavigationItem = [
   NavigationItem('Projects'),
   NavigationItem('Skills'),
   NavigationItem('About Me'),
   NavigationItem('Blog'),


 ];