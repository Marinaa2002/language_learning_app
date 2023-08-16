import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning/models/SampleItem.dart';
import 'package:language_learning/models/phrasesItem.dart';

class ItemPhrases extends StatelessWidget {
  const ItemPhrases({Key? key, required this.phrasesItem, required this.color, required this.itemType}) : super(key: key);

  final PhrasesItem phrasesItem;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrasesItem.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  phrasesItem.enName,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
                onTap: (){
                  AudioCache player = AudioCache(prefix: 'images/sounds/$itemType/');
                  //*******player.play(number.sound);
                },
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 32,
                )),
          ),
        ],
      ),
    );
  }
}
