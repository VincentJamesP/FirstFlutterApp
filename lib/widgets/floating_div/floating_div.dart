import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_responsive_app/constants/app_colors.dart';

class InputFields extends StatelessWidget {
  const InputFields({Key? key}) : super(key: key);

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
                ? 8
                : 14;

        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 5
                : 11;

        return Container(
            margin: EdgeInsets.all(40),
            child: Stack(children: <Widget>[
              Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: SizedBox(
                    width: 800.0,
                    height: 80.0,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            decoration:
                                BoxDecoration(color: Palette.myThemeColor),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'SCHEDULE A DEMO',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    height: 0.9,
                                    fontSize: titleSize,
                                    color: Colors.white,
                                  ),
                                  textAlign: textAlignment,
                                ),
                                Text(
                                  'Learn more about FloQast.',
                                  style: TextStyle(
                                    fontSize: descriptionSize,
                                    height: 1.7,
                                    color: Colors.white,
                                  ),
                                  textAlign: textAlignment,
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.25,
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                RichText(
                                                  text: TextSpan(
                                                      text:
                                                          'Learn How FloQast Can ',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w800,
                                                        height: 0.9,
                                                        fontSize: titleSize,
                                                        color: Colors.black,
                                                      ),
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                          text:
                                                              'Improve Your Month-End',
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            height: 0.9,
                                                            fontSize: titleSize,
                                                            color: Palette
                                                                .myThemeColor,
                                                          ),
                                                        ),
                                                      ]),
                                                ),
                                              ]))),
                                  VerticalDivider(width: 1.0),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.30,
                                          child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                new Flexible(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            OutlineInputBorder(),
                                                        hintText: 'First Name*',
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .all(5.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                new Flexible(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                    child: TextField(
                                                      decoration:
                                                          InputDecoration(
                                                        border:
                                                            OutlineInputBorder(),
                                                        hintText: 'Email*',
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .all(5.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                new Flexible(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                    child: ElevatedButton(
                                                      child: Text(
                                                        'Schedule Now!',
                                                        style: TextStyle(
                                                          fontSize:
                                                              descriptionSize,
                                                          height: 1.7,
                                                          color: Colors.white,
                                                        ),
                                                        textAlign:
                                                            textAlignment,
                                                      ),
                                                      onPressed: () {
                                                        print(
                                                            'Schedule submitted successfully!');
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ]))),
                                ]),
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
