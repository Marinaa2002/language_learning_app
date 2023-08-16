import 'package:flutter/material.dart';
import 'package:language_learning/Components/Category_item.dart';
import 'package:language_learning/screens/Numbers_page.dart';
import 'package:language_learning/screens/colors_page.dart';
import 'package:language_learning/screens/family_members_page.dart';
import 'package:language_learning/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFEF6DB),
        appBar: AppBar(title: Text('Toku', style: TextStyle(color: Colors.white)), backgroundColor: Color(0xff46322B),),
        body: Column(
          children: [
            Category('Numbers', Colors.orange, (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return Numbers_Page();
              }));
            }),
            Category('Family Members', Colors.green, (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return family_members_page();
              }));
            }),
            Category('Colors', Colors.purple, (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return colors_page();
              }));
            }),
            Category('Phrases', Colors.blue, (){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                return phrases_page();
              }));
            }),
          ],
        )
    );
  }
}


