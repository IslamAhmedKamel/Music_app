import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/item_home.dart';
import 'package:flutter_application_1/widgets/item_home.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<ItemModel> itemsList = const [
    ItemModel(color: Colors.orange, path: 'note1.wav'),
    ItemModel(color: Colors.red, path: 'note2.wav'),
    ItemModel(color: Colors.blue, path: 'note3.wav'),
    ItemModel(color: Colors.amber, path: 'note4.wav'),
    ItemModel(color: Colors.green, path: 'note5.wav'),
    ItemModel(color: Colors.black, path: 'note6.wav'),
    ItemModel(color: Colors.cyan, path: 'note7.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text(
          'Tune Music',
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
              (e) => ItemTune(item: e),
            )
            .toList(),
      ),
    );
  }
}
