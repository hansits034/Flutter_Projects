import 'package:demo_app/constants/colors.dart';
import 'package:flutter/material.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
                margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30,),
                height: screenHeight,
                constraints: BoxConstraints(
                  minHeight: 560,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // avatar img
                    ShaderMask(
                      shaderCallback: (bounds) {
                        return LinearGradient(colors: [
                          CustomColor.scaffoldBg.withOpacity(0.3),
                          CustomColor.scaffoldBg.withOpacity(0.3),
                        ]).createShader(bounds);
                      },
                      blendMode: BlendMode.srcATop,
                      child: Image.asset(
                        "assets/GHPP.png",
                        width: screenWidth,
                      ),
                    ),
                    const SizedBox(height: 30),

                        const Text("Hi,\nI'm Hans\nThis Is My First Flutter Project",style: TextStyle(
                          fontSize: 24,
                          height: 1.5,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                        ),),
                        const SizedBox(height: 15),
                        SizedBox(
                          width: 340,
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


                    //btn
                  ],
                ),
              );
  }
}