

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/colors_code.dart';

class WalletItemUser extends StatelessWidget {

  final String userName;
  final int mount;
  final String date;
  final Color fillColor;
  const WalletItemUser({super.key, required this.userName, required this.mount, required this.date, required this.fillColor});



  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 162,
          height: 192,
          margin: const EdgeInsets.only(right: 12,top: 40),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            color: ColorsCode.whiteColor,
            shape: BoxShape.rectangle,
          ),
          child: Column(
            children: [
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: fillColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 30,),
                      Text(
                        userName,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: ColorsCode.whiteColor,
                        ),
                      ),

                      Text(
                        "Total Spending",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: ColorsCode.whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                        "$mount",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: ColorsCode.blackColor,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Last spend $date",
                    maxLines: 1,
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

        ),
        Positioned(
          top: 0,
          right: 50,
          child: Image.asset(
            'asset/icons/user_profile.png',
            width: 80,
            height: 80,
          ),
        )
      ],
    );
  }
}
