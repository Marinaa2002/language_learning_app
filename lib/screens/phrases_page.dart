import 'package:flutter/material.dart';
import 'package:language_learning/Components/phraseItem.dart';
import 'package:language_learning/models/phrasesItem.dart';


class phrases_page extends StatelessWidget {
  const phrases_page({Key? key}) : super(key: key);

  final List<PhrasesItem> phrases = const [
    PhrasesItem(jpName: 'Kimasu ka?', enName: 'Are you coming?', sound: 'are_you_coming.wav'),
    PhrasesItem(jpName: 'Wasurezu ni kōdoku shite kudasai ', enName: 'Don\'t forget to Subscribe', sound: 'dont_forget_to_subscribe.wav'),
    PhrasesItem(jpName: 'Ogenki desu ka? ', enName: 'How are you?', sound: 'how_are_you_feeling.wav'),
    PhrasesItem(jpName: 'Watashi wa anime ga daisukidesu', enName: 'I Love Anime', sound: 'i_love_anime.wav'),
    PhrasesItem(jpName: 'Puroguramingu ga daisuki', enName: 'I Love Programming', sound: 'i_love_programming.wav'),
    PhrasesItem(jpName: 'Puroguramingu wa kantandesu', enName: 'Programming is easy', sound: 'programming_is_easy.wav'),
    PhrasesItem(jpName: 'Namae wa nandesu ka', enName: 'What is your name?', sound: 'what_is_your_name.wav'),
    PhrasesItem(jpName: 'Doko ni iku no?', enName: 'Where are you going?', sound: 'where_are_you_going.wav'),
    PhrasesItem(jpName: 'Hai, ikimasu', enName: 'yes I\'m coming', sound: 'yes_im_coming.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Phrases'),
          backgroundColor: Color(0xff46322B),
        ),
        body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index){
            return ItemPhrases(phrasesItem: phrases[index],color: Colors.blue, itemType: 'phrases',);
          },)
    );
  }
}