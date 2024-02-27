import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// Sizes




const double mobileScaffoldSizePadding = 20;
const double tabletScaffoldSizePadding = 50;
const double cardPadding = 12.0;
const double cardSquareSide = 360.0;
var cardBorderRadius = BorderRadius.circular(26);
var socialsIconBorderRadius = BorderRadius.circular(10);

const double mobileWidth = 500;
const double tabletWidth = 1000;

const double linkedinIconSize = 60;
const double githubIconSize = 100;

/// Assets

// Retro game icons
const String ghost1 = 'icons/ghost1.png';
const String ghost2 = 'icons/ghost2.png';
const String pacman = 'icons/pacman.png';
const String spaceBug = 'icons/space-bug.png';



// Images
const String myPicPath = 'assets/images/my-pic.jpeg';
const String devIconPath = 'assets/images/dev-laptop-icon.png';
const String mmLogoPath = 'assets/images/mobimind-logo.jpg';
const String gtsLogoPath = 'assets/images/gts-logo.png';
const String projectsPath = 'assets/images/projects.png';
const String colorfulLaptopPath = 'assets/images/colorful-laptop.png';
const String flutterLebLogoPath = 'assets/images/flutterleb-logo.png';

// Job Icons
const String githubIconPath = 'assets/icons/github.png';
const String linkedinIconPath = 'assets/icons/linkedin.png';

// Icons
const String flutterIcon = 'assets/icons/flutter.svg'; // Lang
const String dartIcon = 'assets/icons/dart.svg'; // Lang
const String nodeIcon = 'assets/icons/node.svg'; // Lang
const String javascriptIcon = 'assets/icons/javascript.svg'; // Lang
const String javaIcon = 'assets/icons/java.svg'; // Lang
const String pythonIcon = 'assets/icons/python.svg'; // Lang
const String firebaseIcon = 'assets/icons/firebase.svg'; // DB and services
const String mongodbIcon = 'assets/icons/mongodb.svg'; // DB and services
const String mysqlIcon = 'assets/icons/mysql.svg'; // DB and services
const String vscodeIcon = 'assets/icons/vscode.svg'; // Tools
const String intellijIcon = 'assets/icons/intellij.svg'; // Tools
const String linuxIcon = 'assets/icons/linux.svg'; // Tools
const String postmanIcon = 'assets/icons/postman.svg'; // Tools

// SVGs
final Widget flutterSVG = SvgPicture.asset(flutterIcon, semanticsLabel: 'Flutter Logo');
final Widget dartSVG = SvgPicture.asset(dartIcon, semanticsLabel: 'Dart Logo');
final Widget nodeSVG = SvgPicture.asset(nodeIcon, semanticsLabel: 'Node Logo');
final Widget javascriptSVG= SvgPicture.asset(javascriptIcon, semanticsLabel: 'JS Logo');
final Widget javaSVG = SvgPicture.asset(javaIcon, semanticsLabel: 'Java Logo');
final Widget pythonSVG = SvgPicture.asset(pythonIcon, semanticsLabel: 'Python Logo');
final Widget firebaseSVG = SvgPicture.asset(firebaseIcon, semanticsLabel: 'Firebase Logo');
final Widget mongodbSVG = SvgPicture.asset(mongodbIcon, semanticsLabel: 'MongoDB Logo');
final Widget mysqlSVG = SvgPicture.asset(mysqlIcon, semanticsLabel: 'MySQL Logo');
final Widget postmanSVG = SvgPicture.asset(postmanIcon, semanticsLabel: 'Postman Logo');
final Widget vscodeSVG = SvgPicture.asset(vscodeIcon, semanticsLabel: 'VSCode Logo');
final Widget intellijSVG = SvgPicture.asset(intellijIcon, semanticsLabel: 'IntelliJ Logo');
final Widget linuxSVG = SvgPicture.asset(linuxIcon, semanticsLabel: 'Linux Logo');

// Category Lists of icons
final List<Widget> langsAndFWsIcons = [flutterSVG, dartSVG, nodeSVG,javascriptSVG, javaSVG, pythonSVG];
final List<Widget> dbsAndServicesIcons = [firebaseSVG, mongodbSVG, mysqlSVG];
final List<Widget> toolsIcons = [vscodeSVG, intellijSVG, postmanSVG,linuxSVG ];

// Gradient
var myGradient = LinearGradient(colors: [
  Colors.pink[400]!,
  const Color.fromARGB(255, 253, 240, 125),
]);

// Strings
const String myFullName = 'GHASSAN Al Karaan';
const String myTitle = 'Software Developer';

// URLs
const String linkedinUrl = 'https://www.linkedin.com/in/ghassan-alkaraan';
const String githubUrl = 'https://github.com/GhassanAlKaraan';
const String emailUrl = 'mailto:ghass.karaan@gmail.com';
const String resumeUrl = 'https://drive.google.com/file/d/1iEt3iOnuIHb7egvlZtm4o6NWUhqXsAMJ/view';
const String figmaUrl = 'https://www.figma.com/file/L5vY52RBTsRcHnGdV34Lhn/Screenshots';
const String instaPageUrl = 'https://www.instagram.com/flutterleb/';

const String mmJobTitle = "NOC Engineer\n@Mobimind";
const String mmDuration = "APR 2021 - JAN 2023";

const String gtsJobTitle = "Technical Consultant\n@GTS";
const String gtsDuration = "APR 2023 - NOW";


