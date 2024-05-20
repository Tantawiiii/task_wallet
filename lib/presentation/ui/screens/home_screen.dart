import 'package:bounce/bounce.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:motion/motion.dart';
import 'package:task_wallet/presentation/ui/widget/build_wallet_item.dart';

import '../../../utils/colors_code.dart';
import '../widget/custom_button.dart';

class HomeScreen extends StatefulWidget {
  final String username;

  const HomeScreen({super.key, required this.username});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            'asset/icons/bk_home.svg',
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(24.0),
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: [
                _buildRowBar(),
                const SizedBox(
                  height: 30,
                ),
                _buildUserDataHeader(),
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WalletItem(
                        title: "Your Wallet",
                        fillColor: ColorsCode.grayOff,
                        iconPath: "asset/icons/wallet.svg",
                        mount: "970.0",
                        date: "Last update 24/6"),
                    WalletItem(
                        title: "Last Activity",
                        fillColor: ColorsCode.grayOn,
                        iconPath: "asset/icons/last_wallet.svg",
                        mount: "265.0",
                        date: "Transaction on 10/5"),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Motion(
                  child: Bounce(
                    filterQuality: FilterQuality.high,
                    onTap: () {},
                    duration: const Duration(milliseconds: 1000),
                    child: Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                        color: ColorsCode.BLUE,
                        shape: BoxShape.rectangle,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Test",
                            style: TextStyle(
                                color: ColorsCode.whiteColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.arrow_forward,
                              color: ColorsCode.whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRowBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SvgPicture.asset(
          'asset/icons/notify_icon.svg',
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 20,
        ),
        SvgPicture.asset(
          'asset/icons/menu_icon.svg',
          fit: BoxFit.cover,
        ),
      ],
    );
  }

  Widget _buildUserDataHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          'asset/icons/user_profile.png',
          width: 88,
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good Evening,",
              style: TextStyle(
                  color: ColorsCode.whiteColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w300),
            ),
            Text(
              widget.username,
              style: TextStyle(
                  color: ColorsCode.whiteColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}
