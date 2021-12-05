import 'package:flutter/material.dart';
import 'termString.dart' as term;


class TermsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.027),
        child: Text(
          term.terms,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width * 0.027
          ),
        ),
      ),
    );
  }
}
