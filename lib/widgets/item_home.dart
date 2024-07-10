import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/item_home.dart';

// ignore: must_be_immutable
class ItemTune extends StatelessWidget {
    ItemTune({super.key, required this.item});
   
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
