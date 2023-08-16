import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/src/audioplayer.dart';
import 'package:flutter/material.dart';
import 'package:language_learning/models/SampleItem.dart';

class Item extends StatelessWidget {
  const Item({Key? key, required this.sampleItem, required this.color, required this.itemType}) : super(key: key);

  final SampleItem sampleItem;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(color: Color(0xFFFEF6DB), child: Image.asset(sampleItem.image)),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  sampleItem.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  sampleItem.enName,
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
                //AudioCache player = AudioCache(prefix: 'images/sounds/$itemType/');
                //****player.play(number.sound);
                final player = AudioPlayer();
                player.play(AssetSource('sounds/numbers/number_one_sound.mp3'));
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
