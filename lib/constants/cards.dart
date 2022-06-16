
import 'package:flutter/material.dart';


class Cards extends StatelessWidget {
  String subtitle;
  Cards(@required this.subtitle);
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Card(elevation: 50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          shadowColor: Colors.black,
          color: Colors.greenAccent[100],
          child: SizedBox(
            width: 100,
            height: 100,
            child:Column(
              children: [
                Icon(Icons.pending, size: 20,),
                SizedBox(height: 20,),
                Text(subtitle),
              ],
            )
     
    )));
    
  }
}