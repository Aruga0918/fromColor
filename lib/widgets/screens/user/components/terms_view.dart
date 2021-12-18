import 'package:flutter/material.dart';


class TermsView extends StatelessWidget {
  const TermsView({
    Key? key,
    required this.displayText,
  }) : super(key: key);
  final String displayText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.02),
        child: Text(
          displayText,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.027
          ),
        ),
      ),
    );
  }
}
