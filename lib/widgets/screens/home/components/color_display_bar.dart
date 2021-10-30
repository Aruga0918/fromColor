import 'package:flutter/material.dart';
import 'package:from_color/gen/assets.gen.dart';

class ColorDisplayBar extends StatelessWidget {
  const ColorDisplayBar({
    Key? key,
    required this.selectedColor,
    required this.clothType,
    required this.onTap
  }) : super(key: key);
  final Color selectedColor;
  final String clothType;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.45,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                 color: Colors.black26,
              )
            )
          ),
          child: Row(
            children: [
              Text(clothType),
              Spacer(),
              InkWell(
                onTap: onTap,
                child: CircleAvatar(
                  backgroundColor: Colors.black26,
                  radius: MediaQuery.of(context).size.width * 0.05,
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.045,
                    backgroundColor: selectedColor,
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Padding(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.02),
                  child: Text(selectedColor.value.toRadixString(16)),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.45,
          height: MediaQuery.of(context).size.height * 0.1,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              if (clothType == "アウター") Image(
                image: Assets.images.sampleBlouzon,
                height: MediaQuery.of(context).size.height * 0.1
              )
              else if (clothType == "トップス") Image(
                image: Assets.images.sampleTops,
                height: MediaQuery.of(context).size.height * 0.1
              )
              else if (clothType == "ボトムス") Image(
                image: Assets.images.sampleBottoms,
                height: MediaQuery.of(context).size.height * 0.1
                )
              else Image(
                image: Assets.images.sampleShoes,
                height: MediaQuery.of(context).size.height * 0.1
                )
            ],
          ),
        )
      ],
    );
  }
}
