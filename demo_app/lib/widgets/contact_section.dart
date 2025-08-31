import 'package:demo_app/constants/colors.dart';
import 'package:demo_app/constants/size.dart';
import 'package:demo_app/constants/sns_links.dart';
import 'package:demo_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:js' as js;

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.bgLight1,
                child: Column(
                  children: [
                    // Title
                    const Text("Ask Me On This Mailbox", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: CustomColor.whitePrimary),),

                    //
                    const SizedBox(height: 50),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 700, maxHeight: 100,),
                      child: LayoutBuilder(builder:(context,constraints){
                        if(constraints.maxWidth>=kMinDesktopWidth){
                          return buildnameEmailFieldDesktop();
                        }
                        else
                        return buildnameEmailFieldMobile();
                      },),
                    ),
                    const SizedBox(height: 15),
                      ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 700,),
                          child: CustomTextfield(
                            hintText: "Your Message",
                            maxLines: 16,
                          ),
                        ),

                        // Send btn
                        const SizedBox(height: 20),
                      ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 700,),
                          child: SizedBox(
                            width: double.maxFinite,
                            child: ElevatedButton(
                              onPressed: (){},
                              child: const Text(
                                "Send",
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
                        ),
                        
                      const SizedBox(height: 30),
                      ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 300),
                        child: const Divider(),
                      ),
                      const SizedBox(height: 15),

                      // SNS icon btn links
                      Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        alignment: WrapAlignment.center,
                        children: [
                          InkWell(onTap: (){js.context.callMethod('open', [SnsLinks.github]);}, child: Image.asset("assets/github.png", width: 28,),),
                          InkWell(onTap: (){js.context.callMethod('open', [SnsLinks.linkedIn]);}, child: Image.asset("assets/linkedin.png", width: 28,),),
                          InkWell(onTap: (){js.context.callMethod('open', [SnsLinks.facebook]);}, child: Image.asset("assets/facebook.png", width: 28,),),
                          InkWell(onTap: (){js.context.callMethod('open', [SnsLinks.instagram]);}, child: Image.asset("assets/instagram.png", width: 28,),),
                          InkWell(onTap: (){js.context.callMethod('open', [SnsLinks.telegram]);}, child: Image.asset("assets/telegram.png", width: 28,),),    
                        ],
                      )
                               
                  ],
                ),
              );
  }

  Row buildnameEmailFieldDesktop(){
    return Row(
                        children: [
                          Flexible(child: CustomTextfield(
                            hintText: "Your Name",
                          ),
                          ),
                          const SizedBox(width: 15),
                          Flexible(child: CustomTextfield(
                            hintText: "Your Email",
                          ),
                          ),
                        ],
                      );
  }

  Column buildnameEmailFieldMobile(){
    return Column(
                        children: [
                          Flexible(child: CustomTextfield(
                            hintText: "Your Name",
                          ),
                          ),
                          const SizedBox(height: 15),
                          Flexible(child: CustomTextfield(
                            hintText: "Your Email",
                          ),
                          ),
                        ],
                      );
  }
}