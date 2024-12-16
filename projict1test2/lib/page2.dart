import 'package:flutter/material.dart';
import 'package:projict1test2/info.dart';
import 'index.dart';
class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerFianceName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/Pink Wallpaper.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 75.0, left: 50,right: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("What's your Name?",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: Offset(1, 2),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                    ),
                    controller: controllerName,
                  ),
                SizedBox(height: 30,),
                Text("What's your Fiance(e)'s Name?",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: Offset(1, 2),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  controller: controllerFianceName,
                ),
                SizedBox(height: 30,),
                    Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFD58E8E),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed:(){
                              String name = controllerName.text;
                              String name2 = controllerFianceName.text;
                              Information inf =  Information(name, name2);
                              Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context)=> index(),
                                      settings: RouteSettings(arguments: inf)
                                  )
                              );
                            },
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text('Next', style: TextStyle(fontSize: 20,color: Colors.white),),
                          )
                      ),
                    ),
                    SizedBox(width: 30,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
