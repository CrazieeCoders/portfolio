import 'package:flutter/material.dart';
import 'package:portfolio/project/project_view.dart';

class DesktopViewBuilder extends StatelessWidget {

  final String titleText;
  final List<Widget> children;

  const DesktopViewBuilder({Key? key, required this.titleText, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 980,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(thickness: 3,),
            Text(titleText,
              style: Theme.of(context).textTheme.headline3,),

            ...children,
          ],
        ),
      ),
    );
  }
}
