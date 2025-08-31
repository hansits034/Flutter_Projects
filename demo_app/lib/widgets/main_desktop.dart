import 'package:demo_app/constants/colors.dart';
import 'package:flutter/material.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
                margin: EdgeInsets.symmetric(horizontal: 20,),
                height: screenHeight / 1.2,
                constraints: BoxConstraints(minHeight: 350,),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Hi,\nI'm Hans\nThis Is My First Flutter Project",style: TextStyle(
                          fontSize: 30,
                          height: 1.5,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                        ),),
                        const SizedBox(height: 15),
                        SizedBox(
                          width: 420,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("Let's Take a Look!",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: CustomColor.yellowPrimary,
                                foregroundColor: Colors.white,
                              ),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      "assets/GHPP.png",
                      width: screenWidth / 2,
                    ),
                  ],
              ),);
  }
}