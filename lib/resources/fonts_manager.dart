import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/color_manager.dart';
import 'package:my_portfolio/resources/constants.dart';
import 'package:my_portfolio/widgets/title_card.dart';


double minScreenWidth = 300;


var myIconLogo = LayoutBuilder(
  builder: (context, constraints) {
    double size = constraints.maxWidth > minScreenWidth ? 200 : 130;

    return Image.asset(devIconPath, width: size);
  },
);

var myNameText = LayoutBuilder(
  builder: (context, constraints) {
    double fontSize = constraints.maxWidth > minScreenWidth ? 30 : 20;

    return GradientText(myFullName,
        gradient: myGradient,
        style: TextStyle(
            color: Colors.black, fontFamily: "Anta", fontSize: fontSize));
  },
);

var myTitleText = LayoutBuilder(
  builder: (context, constraints) {
    double fontSize = constraints.maxWidth > minScreenWidth ? 22 : 16;
    return Text(
      myTitle,
      style: TextStyle(
          color: Colors.black, fontFamily: "Anta", fontSize: fontSize),
    );
  },
);


jobJconLogo(path) => LayoutBuilder(
  builder: (context, constraints) {
    double size = constraints.maxWidth > minScreenWidth ? 80 : 50;

    return Image.asset(path, width: size+20, height: size);
  },
);

jobTitleText(title) => LayoutBuilder(
  builder: (context, constraints) {
    double fontSize = constraints.maxWidth > minScreenWidth ? 12 : 8;
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Colors.black, fontFamily: "Anta", fontWeight: FontWeight.bold,fontSize: fontSize),
    );
  },
);

jobDurationText(duration) => LayoutBuilder(
  builder: (context, constraints) {
    double fontSize = constraints.maxWidth > minScreenWidth ? 10 : 8;
    return Text(
      duration,
      style: TextStyle(
          color: ColorManager.jobDuration, fontWeight: FontWeight.bold,fontSize: fontSize),
    );
  },
);



cardTitleText(title) => LayoutBuilder(
  builder: (context, constraints) {
    double fontSize = constraints.maxWidth > 300 ? 30 : 22;
    return Text(
      title,
      style: TextStyle(
          color: Colors.black, fontFamily: "Anta", fontSize: fontSize),
    );
  },
);
