import 'package:aeta/pages/homepage.dart';
import 'package:aeta/pages/others.dart';
import 'package:aeta/pages/profile.dart';
import 'package:aeta/widgets/appBar.dart';
import 'package:aeta/widgets/icons.dart';
import 'package:aeta/widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = <Widget>[
    HomePage(),
    OthersPage(),
    ProfilePage(),
    Text(
      'Profile',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Utils.backgroundColor,
        appBar: AppBarWidget(),
        bottomNavigationBar: Container(
          height: 90,
          color: Utils.white,
          padding: EdgeInsets.all(25),
          child: Center(
            child: GNav(
              backgroundColor: Utils.white,
              activeColor: Utils.primary,
              color: Utils.gray100,
              tabBackgroundColor: Utils.backgroundColor,
              rippleColor: Utils.backgroundColor,
              tabBorderRadius: 65,
              gap: 5,
              textStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Utils.primary),
              tabs: [
                GButton(
                  padding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                  icon: CustomIcons.home,
                  text: 'Home',
                ),
                GButton(
                  padding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                  icon: CustomIcons.others,
                  text: 'Outros',
                ),
                GButton(
                  padding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                  icon: CustomIcons.person,
                  text: 'Perfil',
                ),
                GButton(
                  padding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                  icon: CustomIcons.settings,
                  text: 'Config',
                )
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (value) => setState(() => _selectedIndex = value),
            ),
          ),
        ),
        body: _pages.elementAt(_selectedIndex));
  }
}
