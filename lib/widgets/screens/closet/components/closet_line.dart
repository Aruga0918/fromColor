import 'package:flutter/material.dart';
import 'package:from_color/models/entities/cloth_display.dart';
import 'package:from_color/widgets/screens/closet/components/closet_grid.dart';

class ClosetLine extends StatelessWidget {
  const ClosetLine({
    Key? key,
    required this.clothCategory,
    required this.ownItems,
    required this.onTap
  }) : super(key: key);
  final String clothCategory;
  final List<ClothDisplay> ownItems;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.4,
        minHeight: MediaQuery.of(context).size.height * 0.15
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: double.maxFinite,
            decoration: BoxDecoration(
              boxShadow: [BoxShadow()],
              color: Colors.white
            ),
            child: Padding(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(clothCategory),
                  InkWell(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "add item",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black45
                          ),
                        ),
                        Icon(
                          Icons.add,
                          color: Colors.black45,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            alignment: Alignment.centerLeft,
          ),
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width / 60),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: ownItems.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                mainAxisSpacing: MediaQuery.of(context).size.width / 60,
                crossAxisSpacing: MediaQuery.of(context).size.width / 60,
              ),
              itemBuilder: (BuildContext context, int index) {
                return ClosetGrid(
                    imgSrc: ownItems[index].imgSrc,
                    colorCode: ownItems[index].colorCode
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}
