import 'package:bounce/bounce.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:motion/motion.dart';
import 'package:task_wallet/presentation/ui/widget/build_wallet_item.dart';
import 'package:task_wallet/presentation/ui/widget/build_wallet_item_user.dart';

import '../../../utils/colors_code.dart';
import '../../models/user_model.dart';
import '../../service/db_service/db_services.dart';

class HomeScreen extends StatefulWidget {
  final String username;

  const HomeScreen({super.key, required this.username});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  List<User> _users = [];

  @override
  void initState() {
    super.initState();
    _initDatabase();
  }

  Future<void> _initDatabase() async {
    await DBService.init();
    await DBService.populateDatabase();
    _fetchUsers();
  }

  Future<void> _fetchUsers() async {
    final users = await DBService.fetchUsers();
    setState(() {
      _users = users;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsCode.whiteBack,
      body: Stack(
        children: [
          SvgPicture.asset(
            'asset/icons/bk_home.svg',
            fit: BoxFit.cover,
          ),
          ListView(
            children: [
              Container(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                        duration: const Duration(milliseconds: 500),
                        child: Container(
                          height: 120,
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(16),
                            ),
                            color: ColorsCode.BLUE,
                            shape: BoxShape.rectangle,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Spacer(),
                              Text(
                                "Test",
                                style: TextStyle(
                                    color: ColorsCode.whiteColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal),
                              ),
                              const Spacer(),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: ColorsCode.whiteColor,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),

                    Text(
                      "Users",
                      style: TextStyle(
                          color: ColorsCode.blackColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),



              Container(
                margin: const EdgeInsets.only(left: 24),
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _users.length,
                  itemBuilder: (context, index) {
                    final user = _users[index];

                    Color fillColor;

                    if (user.username == 'User1') {
                      fillColor = ColorsCode.YellowCard;
                    } else if (user.username == 'User2') {
                      fillColor = ColorsCode.RedCard;
                    } else if (user.username == 'User3') {
                      fillColor = ColorsCode.PurpleCard;
                    } else {
                      fillColor = Colors.cyan;
                    }
                    return WalletItemUser(
                      userName: user.username,
                      mount: user.amount,
                      date: user.lastTransactionDate,
                      fillColor: fillColor,
                    );
                  },
                ),
              ),

              const SizedBox(
                height: 100,
              ),
            ],
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
