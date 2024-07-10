import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/item_home.dart';

class ItemTune extends StatelessWidget {
    ItemTune({required this.item});
   
  ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          item.playSound();
        },
        child: Container(
          color: item.color,
        ),
      ),
    );
  }
}
