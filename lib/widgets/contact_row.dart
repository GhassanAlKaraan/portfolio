import 'package:flutter/material.dart';
import 'package:my_portfolio/resources/constants.dart';
import 'package:my_portfolio/widgets/contact_button.dart';
import 'package:my_portfolio/widgets/resume_button.dart';

class ContactRow extends StatelessWidget {
  const ContactRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResumeButton(),
        SizedBox(width: 20),
        Padding(
          padding: EdgeInsets.only(right: mobileScaffoldSizePadding),
          child: ContactButton(),
        ),
      ],
    );
  }
}
