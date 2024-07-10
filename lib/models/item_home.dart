import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ItemModel {
 final String pathSound;
  final Color color;
 const ItemModel({required this.color,required this.pathSound});
  
      void playSound(){
          final player = AudioPlayer();
              player.play(
                AssetSource(
                  (pathSound),
                ),
              );
      }


}
