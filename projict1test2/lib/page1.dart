import 'package:flutter/material.dart';
import 'package:projict1test2/page2.dart';
class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
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
              padding: const EdgeInsets.only(top: 300.0, right: 30.0, left: 30.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 65.0),
                    child: Row(
                      children: [
                        Image.asset(
                            'images/envato.png',
                            fit: BoxFit.contain,
                            width: 70,
                            height: 70
                        ),
                        Image.asset(
                            'images/eventoria-high-resolution-logo-removebg-preview.png',
                            fit: BoxFit.contain,
                            width: 150,
                            height: 150
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 35),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFD58E8E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context)=> Page2(),
                              )
                          );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Set up your wedding', style: TextStyle(fontSize: 22, color: Colors.white),),
                      )
                  )
                ],
              ),
            ),
        ),
      ),
    );
  }
}

