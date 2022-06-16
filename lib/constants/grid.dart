import 'package:demo_app/constants/cards.dart';
import 'package:demo_app/constants/searchboxes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Grids extends StatelessWidget {
  const Grids({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
     
      home: GridView.count(crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      shrinkWrap: true,
      children: 
        List.generate(4, (index){
          return Container(padding:EdgeInsets.all(15),
          child:Cards("this is me") ,
          );
        } )
      
      ),
    );
    
  }
}
