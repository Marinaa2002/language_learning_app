import 'package:flutter/material.dart';
import 'package:language_learning/Components/item.dart';
import 'package:language_learning/models/SampleItem.dart';


class family_members_page extends StatelessWidget {
  const family_members_page({Key? key}) : super(key: key);

  final List<SampleItem> familyMember = const [
    SampleItem(image: 'assets/images/family_members/family_father.png', jpName: 'Chichioya', enName: 'Father', sound: 'father.wav'),
    SampleItem(image: 'assets/images/family_members/family_daughter.png', jpName: 'Musume', enName: 'Daughter', sound: 'daughter.wav'),
    SampleItem(image: 'assets/images/family_members/family_grandfather.png', jpName: 'Ojīsan', enName: 'Grandfather', sound: 'grand father.wav'),
    SampleItem(image: 'assets/images/family_members/family_mother.png', jpName: 'Hahaoya', enName: 'Mother', sound: 'mother.wav'),
    SampleItem(image: 'assets/images/family_members/family_grandmother.png', jpName: 'Sobo', enName: 'Grandmother', sound: 'grand mother.wav'),
    SampleItem(image: 'assets/images/family_members/family_older_brother.png', jpName: 'Niisan', enName: 'Older Brother', sound: 'older bother.wav'),
    SampleItem(image: 'assets/images/family_members/family_older_sister.png', jpName: 'Ane', enName: 'Older Sister', sound: 'older sister.wav'),
    SampleItem(image: 'assets/images/family_members/family_son.png', jpName: 'Musuko', enName: 'Son', sound: 'son.wav'),
    SampleItem(image: 'assets/images/family_members/family_younger_brother.png', jpName: 'Otouto', enName: 'Younger Brother', sound: 'younger brohter.wav'),
    SampleItem(image: 'assets/images/family_members/family_younger_sister.png', jpName: 'Imōto', enName: 'Younger Sister', sound: 'younger sister.wav'),


  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members'),
        backgroundColor: Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: familyMember.length,
        itemBuilder: (context, index){
        return Item(sampleItem: familyMember[index], color: Colors.green, itemType: 'family_members',);
        },)

    );
  }
}
