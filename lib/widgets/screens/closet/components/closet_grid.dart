import 'package:flutter/material.dart';

class ClosetGrid extends StatelessWidget {
  const ClosetGrid({
    Key? key,
    required this.imgSrc,
    required this.colorCode
  }) : super(key: key);
  final String imgSrc;
  final String colorCode;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width * 0.19,//GridViewでのpaddingは /240 (0.05/12より)
      child: Stack(
        children: [
          Image.network(
            imgSrc,
            width: MediaQuery.of(context).size.width * 0.18,//GridViewでのpaddingは /240 (0.05/12より),
            fit: BoxFit.fitWidth,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width / 240),
              child: CircleAvatar(
                backgroundColor: Color(int.parse('0x$colorCode')),
                radius: MediaQuery.of(context).size.width * 0.03,
              ),
            ),
          )
        ],
      ),
    );
  }
}
