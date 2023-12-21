import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/features/discover/discover_screen.dart';
import 'package:tiktok_clone/features/front/front_screen.dart';
import 'package:tiktok_clone/features/front/front_screen2.dart';
import 'package:tiktok_clone/features/inbox/activity_screen.dart';
import 'package:tiktok_clone/features/inbox/inbox_screen.dart';
import 'package:tiktok_clone/features/main_navigation/widgets/nav_tab.dart';
import 'package:tiktok_clone/features/users/user_profile_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  static const String routeName = "mainNavigation";
  final String tab;
  const MainNavigationScreen({super.key, required this.tab});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

void _onDmPressed(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => const ActivityScreen(),
    ),
  );
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onPostVideoButtonTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ActivityScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Offstage(
          offstage: _selectedIndex != 0,
          child: const FrontScreen2(),
        ),
        Offstage(
          offstage: _selectedIndex != 1,
          child: const DiscoverScreen(),
        ),
        Offstage(
          offstage: _selectedIndex != 2,
          child: const FrontScreen(),
        ),
        Offstage(
          offstage: _selectedIndex != 3,
          child: const InboxScreen(),
        ),
        Offstage(
          offstage: _selectedIndex != 4,
          child: const UserProfileScreen(
            usernames: "정민",
          ),
        ),
      ]),
      bottomNavigationBar: BottomAppBar(
        color: _selectedIndex == 0 ? Colors.black : Colors.white,
        child: Padding(
          padding: const EdgeInsetsDirectional.all(Sizes.size12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavTab(
                text: "Home",
                isSelected: _selectedIndex == 0,
                icon: FontAwesomeIcons.house,
                secelectedIcon: FontAwesomeIcons.house,
                onTap: () => _onTap(0),
                secelectedIndex: _selectedIndex,
              ),
              NavTab(
                text: "달인찾기",
                isSelected: _selectedIndex == 1,
                icon: FontAwesomeIcons.compass,
                secelectedIcon: FontAwesomeIcons.solidCompass,
                onTap: () => _onTap(1),
                secelectedIndex: _selectedIndex,
              ),
              NavTab(
                text: "?카티고리?",
                isSelected: _selectedIndex == 2,
                icon: FontAwesomeIcons.newspaper,
                secelectedIcon: FontAwesomeIcons.solidNewspaper,
                onTap: () => _onTap(2),
                secelectedIndex: _selectedIndex,
              ),
              NavTab(
                text: "메세지",
                isSelected: _selectedIndex == 3,
                icon: FontAwesomeIcons.message,
                secelectedIcon: FontAwesomeIcons.solidMessage,
                onTap: () => _onTap(3),
                secelectedIndex: _selectedIndex,
              ),
              NavTab(
                text: "My Profile",
                isSelected: _selectedIndex == 4,
                icon: FontAwesomeIcons.user,
                secelectedIcon: FontAwesomeIcons.solidUser,
                onTap: () => _onTap(4),
                secelectedIndex: _selectedIndex,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
