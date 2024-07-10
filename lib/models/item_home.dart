import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ItemModel {
 final String path;
  final Color color;
 const ItemModel({required this.color,required this.path});
  
      void playSound(){
          final player = AudioPlayer();
              player.play(
                AssetSource(
                  (path),
                ),
              );
      }


}
