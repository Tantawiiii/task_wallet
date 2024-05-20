

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/colors_code.dart';

class WalletItem extends StatelessWidget {

  final String title;
  final String iconPath;
  final String mount;
  final String date;
  final Color fillColor;
  const WalletItem({super.key, required this.title, required this.iconPath, required this.mount, required this.date, required this.fillColor});



  @override
  Widget build(BuildContext context) {
    return Container(
      width: 162,
      height: 192,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        color: ColorsCode.whiteColor,
        shape: BoxShape.rectangle,
      ),
      child: Stack(

        children: [

          Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: fillColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Center(
              child: Text(
                title.toUpperCase(),
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: ColorsCode.whiteColor,
                ),
              ),
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const SizedBox(height: 50,),
              SvgPicture.asset(
                iconPath,
                fit: BoxFit.cover,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RotatedBox(
                    // Change to 1 for clockwise rotation
                    quarterTurns: -1,
                    child: Text(
                      "EGP",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: ColorsCode.grayOn,
                      ),
                    ),
                  ),

                  Text(
                    mount,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: ColorsCode.blackColor,
                    ),
                  ),
                ],
              ),
              Text(
                date,
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.normal,
                  color: ColorsCode.grayOn,
                ),
              ),
            ],
          ),
        ],
      ),

    );
  }
}
