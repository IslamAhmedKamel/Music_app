import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/item_home.dart';
import 'package:flutter_application_1/widgets/item_home.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<ItemModel> itemsList = const [
    ItemModel(color: Colors.orange, pathSound: 'note1.wav'),
    ItemModel(color: Colors.red, pathSound: 'note2.wav'),
    ItemModel(color: Colors.blue, pathSound: 'note3.wav'),
    ItemModel(color: Colors.amber, pathSound: 'note4.wav'),
    ItemModel(color: Colors.green, pathSound: 'note5.wav'),
    ItemModel(color: Colors.black, pathSound: 'note6.wav'),
    ItemModel(color: Colors.cyan, pathSound: 'note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text(
          'Tune Flutter',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontFamily: 'Playwr',
          ),
        ),
      ),
      body: Column(
        children: itemsList
            .map(
              (item) => ItemTune(item: item),
            )
            .toList(),
      ),
    );
  }
}
