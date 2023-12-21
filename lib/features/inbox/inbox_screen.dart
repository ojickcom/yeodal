import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/inbox/activity_screen.dart';
import 'package:tiktok_clone/features/inbox/chat_detail_screen.dart';
import 'package:tiktok_clone/features/inbox/chats_screen.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});
  void _onDmPressed(BuildContext context) {
    context.pushNamed(ChatsScreen.routeName);
  }

  void _onActivityTap(BuildContext context) {
    context.pushNamed(ActivityScreen.routeName);
  }

  void _onMessageTap(BuildContext context) {
    context.pushNamed(ChatsScreen.routeName, params: {"chatId": "1"});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 1,
          title: const Text(
            "메세지(여행사측 상담내역)",
          ),
          actions: [
            IconButton(
              onPressed: () => _onDmPressed(context),
              icon: const FaIcon(
                FontAwesomeIcons.paperPlane,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            ListTile(
              onTap: () => _onActivityTap(context),
              title: const Text(
                '고객과의 대화 내역',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: Sizes.size18,
                ),
              ),
              trailing: const FaIcon(
                FontAwesomeIcons.chevronRight,
                size: Sizes.size14,
              ),
            ),
            Container(
              color: Colors.grey.shade200,
              height: Sizes.size1,
            ),
            ListTile(
              onTap: () => _onMessageTap(context),
              leading: Container(
                width: Sizes.size52,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: const Center(
                  child: FaIcon(
                    FontAwesomeIcons.users,
                    color: Colors.white,
                  ),
                ),
              ),
              title: const Text(
                '23년 8월 호치민 견적 문의 내역',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: Sizes.size16,
                ),
              ),
              subtitle: const Text("견적서 보내 드렸습니다."),
              trailing: const FaIcon(
                FontAwesomeIcons.chevronRight,
                size: Sizes.size14,
              ),
            ),
            ListTile(
              onTap: () => _onMessageTap(context),
              leading: Container(
                width: Sizes.size52,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: const Center(
                  child: FaIcon(
                    FontAwesomeIcons.users,
                    color: Colors.white,
                  ),
                ),
              ),
              title: const Text(
                '22년 7월 상해 견적 문의 내역',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: Sizes.size16,
                ),
              ),
              subtitle: const Text("견적서 보내 드렸습니다."),
              trailing: const FaIcon(
                FontAwesomeIcons.chevronRight,
                size: Sizes.size14,
              ),
            )
          ],
        ));
  }
}
