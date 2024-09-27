import 'package:flutter/material.dart';
import 'package:money_tracker_project/Overview/Home/CustomButton.dart';

import 'walletTag.dart';

class OverviewHome extends StatefulWidget {
  const OverviewHome({super.key});

  @override
  State<OverviewHome> createState() => _OverviewHomeState();
}

class _OverviewHomeState extends State<OverviewHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFedeff1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(10),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Overview',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xFF000000)),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFF1e42f9),
                      ),
                      child: Icon(
                        Icons.man,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 220,
            color: Color(0xFFedeff1),
            padding: EdgeInsets.only(
              top: 20,
              bottom: 20,
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                WalletTag(
                  title: 'Total Income',
                  money: 400,
                  onTap: () {},
                  leftMargin: true,
                  rightMargin: false,
                ),
                WalletTag(
                  title: 'Total Expense',
                  money: 400,
                  onTap: () {},
                  leftMargin: false,
                  rightMargin: false,
                ),
                WalletTag(
                  title: 'Total Monthly',
                  money: 400,
                  onTap: () {},
                  leftMargin: false,
                  rightMargin: true,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height / 1.95,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), // Bo tròn góc trên bên trái
                  topRight:
                      Radius.circular(30), // Không bo tròn góc trên bên phải
                  bottomLeft:
                      Radius.circular(0), // Không bo tròn góc dưới bên trái
                  bottomRight: Radius.circular(0),
                )),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Custombutton(
                        title: 'Savings',
                        onTap: () {},
                        iconData: Icons.savings),
                    Custombutton(
                        title: 'Reminds',
                        onTap: () {},
                        iconData: Icons.notification_important),
                    Custombutton(
                        title: 'Budgets',
                        onTap: () {},
                        iconData: Icons.wallet),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
