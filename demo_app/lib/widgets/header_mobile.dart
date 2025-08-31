import 'package:demo_app/styles/style.dart';
import 'package:demo_app/widgets/site_logo.dart';
import 'package:flutter/material.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 50,
            margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
            decoration: kHeaderDecoration,
            child: Row(
              children: [
                SiteLogo(onTap: onLogoTap,),
                const Spacer(),
                IconButton(onPressed: onMenuTap, icon: const Icon(Icons.menu),),
                SizedBox(width: 15),
              ],
            ),
          );
  }
}