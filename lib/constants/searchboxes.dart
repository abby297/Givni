
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
  
}

class _SearchState extends State<Search> {
  
  @override
  Widget build(BuildContext context) {
        double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      home:  Container(
        padding: EdgeInsets.only(top: 15),
        height: height*.25,
        decoration: const BoxDecoration( borderRadius: BorderRadius.only(topLeft: Radius.circular(20),),color: Colors.purple),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              hintText: "chasis number",
                     ),
          ),
          SizedBox(width: 15,),
           TextFormField(
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              hintText: "1234..",
                     ),
          ),
        ],

        ),
      
      ),
    );
    
  }
}