import 'package:demo_app/constants/grid.dart';
import 'package:demo_app/constants/login.dart';
import 'package:demo_app/constants/cards.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(body: 
    
    Stack(children: [
        Image( height: height,
          width: width,
                color: Color.fromARGB(255, 182, 116, 154).withOpacity(0.9),
                colorBlendMode: BlendMode.modulate,
                fit: BoxFit.fill,
                image: const AssetImage('images/signup.jpg'),
              ),

     Center(
            child: Container(
              padding: EdgeInsets.only(right: 14,left: 14),
              height: height*.60,
              width: width*.80,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                   color: Color.fromARGB(255, 161, 80, 144).withOpacity(0.7) , 
                    
                    blurRadius: 3.0,
                    spreadRadius: 1.0,
                    offset: Offset(6.0, 6.0), // shadow direction: bottom right
                )
            ], 
                color: Color.fromARGB(255, 161, 80, 144).withOpacity(0.7) , borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Text("SignUp" ,style: TextStyle(fontWeight: FontWeight.bold, fontSize:22)),
                  SizedBox(height: 25,),
                  TextFormField(
                      keyboardType: TextInputType.name,
                      style: TextStyle(color: Colors.white60),
                      decoration: const InputDecoration(
                          labelText: "Full Name",
                          labelStyle: TextStyle(fontSize: 13 ,
                              color: Colors.black, fontWeight: FontWeight.normal))),
                               SizedBox(height: 5),
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: Colors.white60),
                      decoration: const InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(fontSize: 13 ,
                              color: Colors.black, fontWeight: FontWeight.normal))), SizedBox(height: 5),
                  TextFormField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Colors.white60),
                      decoration: const InputDecoration(
                          labelText: "Age",
                          labelStyle: TextStyle(fontSize: 13 ,
                              color: Colors.black, fontWeight: FontWeight.normal))), SizedBox(height: 5),
                  TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(color: Colors.white60),
                      decoration: const InputDecoration(
                        hintText: "minimum 8 characters",
                       hintStyle: TextStyle(fontSize: 12),
                          labelText: "Create Password",
                          labelStyle: TextStyle(fontSize: 13 ,
                              color: Colors.black, fontWeight: FontWeight.normal))), SizedBox(height: 7),
                               SizedBox(height: 30,),
                               SizedBox(
                                width: width*.7,
                                 child: ElevatedButton(
                                  
                                  style: ButtonStyle( backgroundColor: MaterialStateProperty.all(Colors.purple),),
                            onPressed: ()=>{Grids()},
                            child: const Text(
                              'SignUp',
                              style: TextStyle(fontSize: 15),
        
                            )),
                               ),
                              SizedBox(height: 10,),
                             GestureDetector(child: Text("Already have an account.Log In", style: TextStyle(decoration: TextDecoration.underline),), onTap: ()=>{
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()))
                            },),
                            // Cards(),
                ],
              ),
            ),
          ),
    ],
    )
    ,);
    
 
        
     
    
  }
}
