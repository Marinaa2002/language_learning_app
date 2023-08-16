import 'package:flutter/material.dart';
import 'package:language_learning/Components/item.dart';
import 'package:language_learning/models/SampleItem.dart';


class colors_page extends StatelessWidget {
  const colors_page({Key? key}) : super(key: key);

  final List<SampleItem> colors = const [
    SampleItem(image: 'images/colors/color_black.png', jpName: 'Kuro', enName: 'Black', sound: 'black.wav'),
    SampleItem(image: 'images/colors/color_brown.png', jpName: 'Chairo', enName: 'Brown', sound: 'brown.wav'),
    SampleItem(image: 'images/colors/color_gray.png', jpName: 'Gurē', enName: 'Grey', sound: 'gray.wav'),
    SampleItem(image: 'images/colors/color_green.png', jpName: 'Midori', enName: 'Green', sound: 'green.wav'),
    SampleItem(image: 'images/colors/color_red.png', jpName: 'Aka ', enName: 'Red', sound: 'red.wav'),
    SampleItem(image: 'images/colors/color_white.png', jpName: 'Shiroi', enName: 'White', sound: 'white.wav'),
    SampleItem(image: 'images/colors/yellow.png', jpName: 'ōshoku', enName: 'Yellow', sound: 'yellow.wav'),
    SampleItem(image: 'images/colors/color_dusty_yellow.png', jpName: 'Dasutiierō', enName: 'Dusty Yellow', sound: 'dusty yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Colors'),
          backgroundColor: Color(0xff46322B),
        ),
        body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index){
            return Item(sampleItem: colors[index], color: Colors.purple, itemType: 'colors',);
          },)

    );
  }
}