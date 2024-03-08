// import 'package:flutter/material.dart';
// import 'package:my_portfolio/resources/constants.dart';
// class PhotoCard extends StatelessWidget {
//   const PhotoCard({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(cardPadding),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: cardBorderRadius,
//           image: const DecorationImage(
//             image: AssetImage(myPicPath),
//             fit: BoxFit.cover,
//           ),
//         ),
//         // child: Expanded(
//         //                 child: Image.asset(myPicPath)),
//       ),
//     );
//   }
// }

//! Gemini 
// import 'package:flutter/material.dart';
// import 'package:my_portfolio/resources/constants.dart';

// class PhotoCard extends StatefulWidget {
//   const PhotoCard({super.key});

//   @override
//   State<PhotoCard> createState() => _PhotoCardState();
// }

// class _PhotoCardState extends State<PhotoCard> {
//   bool isHovered = false;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(cardPadding),
//       child: MouseRegion(
//         onHover: (_) => setState(() => isHovered = true),
//         onExit: (_) => setState(() => isHovered = false),
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: cardBorderRadius,
//             image: DecorationImage(
//               // Apply filter based on hover state
//               image: const AssetImage(myPicPath),
//               fit: BoxFit.cover,
//               colorFilter: isHovered
//                   ? const ColorFilter.matrix([0.2126, 0.7152, 0.0722, 0, 0, 0.2126, 0.7152, 0.0722, 0, 0, 0.2126, 0.7152, 0.0722, 0, 0, 0, 0, 0, 1.0, 0])
//                   : null,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


//! GPT 4

// import 'package:flutter/material.dart';
// import 'package:my_portfolio/resources/constants.dart';

// class PhotoCard extends StatefulWidget {
//   const PhotoCard({super.key});

//   @override
//   State<PhotoCard> createState() => _PhotoCardState();
// }

// class _PhotoCardState extends State<PhotoCard> {
//   bool isHovered = false;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(cardPadding),
//       child: MouseRegion(
//         onHover: (_) => setState(() => isHovered = true),
//         onExit: (_) => setState(() => isHovered = false),
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: cardBorderRadius,
//             image: DecorationImage(
//               image: const AssetImage(myPicPath),
//               fit: BoxFit.cover,
//               // Greyscale by default, remove filter when hovered
//               colorFilter: !isHovered
//                   ? const ColorFilter.matrix([
//                       0.2126, 0.7152, 0.0722, 0, 0, 
//                       0.2126, 0.7152, 0.0722, 0, 0, 
//                       0.2126, 0.7152, 0.0722, 0, 0, 
//                       0, 0, 0, 1, 0,
//                     ])
//                   : null,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }



//! Working
// import 'package:flutter/material.dart';
// import 'package:my_portfolio/resources/constants.dart';

// class PhotoCard extends StatefulWidget {
//   const PhotoCard({super.key});

//   @override
//   State<PhotoCard> createState() => _PhotoCardState();
// }

// class _PhotoCardState extends State<PhotoCard> {
//   bool isHovered = false;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(cardPadding),
//       child: MouseRegion(
//         onHover: (_) => setState(() => isHovered = true),
//         onExit: (_) => setState(() => isHovered = false),
//         child: AnimatedContainer(
//           duration: const Duration(milliseconds: 300),
//           decoration: BoxDecoration(
//             borderRadius: cardBorderRadius,
//             image: DecorationImage(
//               image: const AssetImage(myPicPath),
//               fit: BoxFit.cover,
//               colorFilter: !isHovered
//                   ? const ColorFilter.matrix([
//                       0.2126, 0.7152, 0.0722, 0, 0,
//                       0.2126, 0.7152, 0.0722, 0, 0,
//                       0.2126, 0.7152, 0.0722, 0, 0,
//                       0, 0, 0, 1, 0,
//                     ])
//                   : null,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//!

import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/constants.dart';

class PhotoCard extends StatefulWidget {
  const PhotoCard({super.key});

  @override
  State<PhotoCard> createState() => _PhotoCardState();
}

class _PhotoCardState extends State<PhotoCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(cardPadding),
      child: MouseRegion(
        onHover: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            borderRadius: cardBorderRadius,
            image: DecorationImage(
              image: const AssetImage(myPicPath),
              fit: BoxFit.cover,
              // Lower saturation when not hovered
              colorFilter: !isHovered
                  ? const ColorFilter.matrix([
                      0.7, 0.2, 0.1, 0, 0,  // Red
                      0.2, 0.7, 0.1, 0, 0,  // Green
                      0.2, 0.2, 0.6, 0, 0,  // Blue
                      0, 0, 0, 1, 0,       // Alpha
                    ])
                  : null, // Full color when hovered
            ),
          ),
        ),
      ),
    );
  }
}
