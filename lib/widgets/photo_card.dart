import 'package:flutter/material.dart';

class PhotoCard extends StatelessWidget {
  const PhotoCard({super.key});

  @override
  Widget build(BuildContext context) {
    double mySize = MediaQuery.of(context).size.width * (0.20);
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        width: mySize,
        height: mySize,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            image: const DecorationImage(
              image: NetworkImage('assets/images/my-pic.jpeg'),
            )),
      ),
    );
  }
}
