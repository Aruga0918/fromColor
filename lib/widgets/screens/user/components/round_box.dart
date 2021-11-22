import 'package:flutter/material.dart';

class RoundedBox extends StatelessWidget {
  const RoundedBox({
    Key? key,
    required this.title,
    required this.icon
  }) : super(key: key);
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.width * 0.3,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
            width: MediaQuery.of(context).size.width * 0.005,
            color: Colors.grey
        ),
        borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width * 0.05),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.width * 0.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
             title,
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold
              ),
            ),
            Icon(
              icon,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
