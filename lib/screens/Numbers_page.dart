import 'package:flutter/material.dart';
import 'package:language_learning/Components/item.dart';
import 'package:language_learning/models/SampleItem.dart';


class Numbers_Page extends StatelessWidget {
  const Numbers_Page({Key? key}) : super(key: key);

  final List <SampleItem> numbers = const [
    SampleItem(image: 'assets/images/numbers/number_one.png', jpName: 'Ichi', enName: 'One', sound: 'sounds/numbers/number_one_sound.mp3'),
    SampleItem(image: 'assets/images/numbers/number_two.png', jpName: 'Ni', enName: 'Two', sound: 'number_two_sound.mp3'),
    SampleItem(image: 'assets/images/numbers/number_three.png', jpName: 'Sahn', enName: 'Three', sound: 'number_three_sound.mp3'),
    SampleItem(image: 'assets/images/numbers/number_four.png', jpName: 'Shi', enName: 'Four', sound: 'number_four_sound.mp3'),
    SampleItem(image: 'assets/images/numbers/number_five.png', jpName: 'Go', enName: 'Five', sound: 'number_five_sound.mp3'),
    SampleItem(image: 'assets/images/numbers/number_six.png', jpName: 'Roku', enName: 'Six', sound: 'number_six_sound.mp3'),
    SampleItem(image: 'assets/images/numbers/number_seven.png', jpName: 'Sebun', enName: 'Seven', sound: 'number_seven_sound.mp3'),
    SampleItem(image: 'assets/images/numbers/number_eight.png', jpName: 'Hachi', enName: 'Eight', sound: 'number_eight_sound.mp3'),
    SampleItem(image: 'assets/images/numbers/number_nine.png', jpName: 'Kyū', enName: 'Nine', sound: 'number_nine_sound.mp3'),
    SampleItem(image: 'assets/images/numbers/number_ten.png', jpName: 'Jū', enName: 'Ten', sound: 'number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index){
          return Item(sampleItem: numbers[index], color: Colors.orange, itemType: 'numbers',);
        },

      )
    );
  }
  /*List<Widget> getList(List<Number> numbers){
    List<Widget> itemsList = [];
    for(int i =0; i<numbers.length; i++){
      itemsList.add(Item(number: numbers[i],));
    }
    return itemsList;
  }*/
}


