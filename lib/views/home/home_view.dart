import 'package:flutter/material.dart';
import 'package:flutter_responsive_app/widgets/centered_view/centered_view.dart';
import 'package:flutter_responsive_app/widgets/floating_div/floating_div.dart';
import 'package:flutter_responsive_app/widgets/opaque_slogan/opaque_slogan.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CenteredView(
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(children: <Widget>[
              OpaqueSlogan(),
              SizedBox(
                height: 100.0,
              ),
              InputFields(),
            ])),
      ),
    );
  }
}
