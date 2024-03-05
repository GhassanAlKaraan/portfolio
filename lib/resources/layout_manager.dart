import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/color_manager.dart';
import 'package:my_portfolio/resources/constants.dart';
import 'package:my_portfolio/widgets/title_card.dart';

double minScreenWidth = 300;

var myIconLogo = LayoutBuilder(
  builder: (context, constraints) {
    double size = constraints.maxWidth > minScreenWidth ? 150 : 130;

    return Image.asset(devIconPath, width: size);
  },
);

actionButtonText(title) => LayoutBuilder(
      builder: (context, constraints) {
        return Text(
          title,
          style: const TextStyle(fontFamily: "Anta", fontSize: 16),
        );
      },
    );

var myNameText = LayoutBuilder(
  builder: (context, constraints) {
    double fontSize = constraints.maxWidth > minScreenWidth ? 30 : 20;

    return GradientText(myFullName,
        gradient: myGradient,
        style: TextStyle(fontFamily: "Anta", fontSize: fontSize));
  },
);

var myTitleText = LayoutBuilder(
  builder: (context, constraints) {
    double fontSize = constraints.maxWidth > minScreenWidth ? 22 : 16;
    return Text(
      myTitle,
      style: TextStyle(fontFamily: "Anta", fontSize: fontSize),
    );
  },
);

jobIconLogo(path) => LayoutBuilder(
      builder: (context, constraints) {
        double size;

        size = constraints.maxWidth > minScreenWidth ? 80 : 60;
        return Image.asset(path, width: size + 20, height: size);
      },
    );

jobTitleText(title) => LayoutBuilder(
      builder: (context, constraints) {
        double fontSize = constraints.maxWidth > minScreenWidth ? 12 : 10;
        return Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: "Anta",
              fontWeight: FontWeight.bold,
              fontSize: fontSize),
        );
      },
    );

jobDurationText(duration) => LayoutBuilder(
      builder: (context, constraints) {
        double fontSize = constraints.maxWidth > minScreenWidth ? 10 : 8;

        return Text(
          duration,
          style: TextStyle(
              color: ColorManager.jobDuration,
              fontWeight: FontWeight.bold,
              fontSize: fontSize),
        );
      },
    );

//! Special Case for desktop
jobIconLogoDesktop(path) => Image.asset(path, width: 110, height: 110);
      

jobTitleTextDesktop(title) =>Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontFamily: "Anta",
              fontWeight: FontWeight.bold,
              fontSize: 18),
        );

    jobDurationTextDesktop(duration) => Text(duration, style: TextStyle(
              color: ColorManager.jobDuration,
              fontWeight: FontWeight.bold,
              fontSize: 14));
//!

cardTitleText(title) => LayoutBuilder(
      builder: (context, constraints) {
        double fontSize = constraints.maxWidth > 300 ? 30 : 22;
        return Text(
          title,
          style: TextStyle(fontFamily: "Anta", fontSize: fontSize),
        );
      },
    );

flutterLebText(title) => LayoutBuilder(
      builder: (context, constraints) {
        double fontSize = 18;
        return Text(
          title,
          style: TextStyle(
              fontFamily: "Anta", fontSize: fontSize),
        );
      },
    );
