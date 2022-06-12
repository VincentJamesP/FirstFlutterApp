import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_responsive_app/constants/app_colors.dart';

class OpaqueSlogan extends StatelessWidget {
  const OpaqueSlogan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.center;
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 15
                : 25;

        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 7
                : 15;

        return Container(
            margin: EdgeInsets.only(top: 80.0),
            child: Stack(children: <Widget>[
              Align(
                  alignment: FractionalOffset.topLeft,
                  child: SizedBox(
                    width: 600.0,
                    height: 150.0,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.6)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'FLOQAST The',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    height: 0.9,
                                    fontSize: titleSize,
                                    color: Colors.black,
                                  ),
                                  textAlign: textAlignment,
                                ),
                                Text(
                                  'Fastest, Most Accurate',
                                  style: TextStyle(
                                    fontSize: titleSize,
                                    height: 1.7,
                                    color: Palette.myThemeColor,
                                  ),
                                  textAlign: textAlignment,
                                ),
                                Text(
                                  'Way to Close Your Books!',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    height: 0.9,
                                    fontSize: titleSize,
                                    color: Colors.black,
                                  ),
                                  textAlign: textAlignment,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
            ]));
      },
    );
  }
}
