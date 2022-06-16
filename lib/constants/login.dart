import 'package:demo_app/constants/grid.dart';
import 'package:demo_app/constants/signup.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  @override
  Widget build(BuildContext context) {
   
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    
   
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar( elevation: null ,backgroundColor: Color.fromARGB(255, 216, 66, 183) , title: Center(child: Text("Givni"))),
        body: 
         
           Stack(
            children: [
            
              Image( height: height,
          width: width,
                color: Color.fromARGB(255, 182, 116, 154).withOpacity(0.9),
                colorBlendMode: BlendMode.modulate,
                fit: BoxFit.fill,
                image: const AssetImage('images/signup.jpg'),
              ),
              Center(
                child: Container(
                    padding: EdgeInsets.only(top: 45, left: 12, right: 12),
                    width: width * .80,
                    height: height * .60,
                    margin: const EdgeInsets.only(top: 50),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 2.0,
                          spreadRadius: 8.0,
                          offset: Offset(9.0, 9.0),
                          color: Color.fromARGB(255, 150, 50, 130)
                              .withOpacity(0.8) // shadow direction: bottom right
                          )
                    ], borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipOval(
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(27), // Image radius
                            child: const Image(
                              image: AssetImage('images/givni.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        TextFormField(
                            keyboardType: TextInputType.name,
                            style: const TextStyle(color: Colors.white60),
                            decoration: const InputDecoration(
                                labelText: "username",
                                labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal))),
                        TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            style: const TextStyle(color: Colors.white60),
                            obscureText: true,
                            decoration: const InputDecoration(
                                labelText: "password",
                                labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal))),
                        const SizedBox(
                          height: 70,
                        ),
                        SizedBox(
                          width: width * 80,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.purple),
                              ),
                              onPressed: () => {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Grids()))
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(fontSize: 18),
                              )),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        GestureDetector(
                          child: const Text(
                            "New member create account.",
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ),
                          onTap: () => {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const Signup()))
                          },
                        ),
                      ],
                    )),
              ),
            ],
          ),
      
      ),
    );
  }
}
