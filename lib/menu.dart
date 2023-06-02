import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:stylish/pages/favorite.dart';
import 'package:stylish/pages/homePage.dart';
import 'package:stylish/pages/login.dart';
import 'package:stylish/pages/myorders.dart';
import 'package:stylish/pages/profile.dart';
import 'package:stylish/pages/signup.dart';
import 'package:stylish/views/themes/color.dart';

enum _SelectedTab { home, buy, favorite, profile }

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  _SelectedTab _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: IndexedStack(
          index: _SelectedTab.values.indexOf(_selectedTab),
          children: [
            homepage(),
            myorders(),
            favorite(),
            profile(),
            Container(
              color: MyColors.secondary,
            ),
            Container(
              color: MyColors.primary,
            ),
            Container(
              color: MyColors.secondary,
            ),
          ],
        ),
      ),
      bottomNavigationBar: DotNavigationBar(
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
        dotIndicatorColor: Color(0xffEF9F27),
        backgroundColor: Color(0xffF5F6FA),
        paddingR: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        enablePaddingAnimation: false,
        items: [
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.home
                  ? "assets/home_outlined.png"
                  : "assets/home_filled.png",
              width: 24,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.buy
                  ? "assets/buy_outlined.png"
                  : "assets/buy_filled.png",
              width: 24,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.favorite
                  ? "assets/favorite_outlined.png"
                  : "assets/favorite_filled.png",
              width: 24,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.profile
                  ? "assets/profile_outlined.png"
                  : "assets/profile_filled.png",
              width: 24,
            ),
          ),
        ],
      ),
    );
  }
}
