import 'package:flutter/material.dart';

class DialogCloseButton extends StatelessWidget {
  const DialogCloseButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.02),
          child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(
                Icons.close,
                color: Colors.grey,
              )),
        )
      ],
    );
  }
}
