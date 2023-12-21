import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';

import 'package:tiktok_clone/features/inbox/inbox_screen.dart';
import 'package:tiktok_clone/features/users/user_profile_screen.dart';

class FrontScreen2 extends StatelessWidget {
  static const routeName = 'frontscreen2';
  static const routeURL = '/frontscreen2';
  const FrontScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    void userProfileTab(BuildContext context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const UserProfileScreen(
            usernames: "정민",
          ),
        ),
      );
    }

    void _onHome(BuildContext context) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const InboxScreen(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            GestureDetector(
              onTap: () => _onHome(context),
              child: const Text(
                "Logo",
                textAlign: TextAlign.center, // "1"을 중앙 정렬
              ),
            ),
            const Spacer(),
            IconButton(
                onPressed: () => userProfileTab(context),
                icon: const FaIcon(
                  FontAwesomeIcons.user,
                  size: Sizes.size20,
                  color: Colors.black87,
                ))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsetsDirectional.symmetric(horizontal: Sizes.size18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "검색창: 현재 1. 검색창, 2. 이미지 불러와서 리스트 만들기, 3.바텀 네비게이션바 만들기, 4.네비게이션바 만들까?",
              ),
              Gaps.v48,
              const Center(
                child: Text(
                  "여행의 달인에게 견적서 받기",
                  style: TextStyle(
                    fontSize: Sizes.size20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Gaps.v16,
              SizedBox(
                height: 115,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Column(
                      children: [
                        SizedBox(
                          width: 88,
                          child: Image.asset("assets/images/airplane.png"),
                        ),
                        const Text("허니문 여행"),
                      ],
                    ),
                    Gaps.h10,
                    Column(
                      children: [
                        SizedBox(
                          width: 88,
                          child: Image.asset("assets/images/Burger.png"),
                        ),
                        const Text("골프여행"),
                      ],
                    ),
                    Gaps.h10,
                    Column(
                      children: [
                        SizedBox(
                          width: 88,
                          child: Image.asset("assets/images/book01.png"),
                        ),
                        const Text("졸업여행"),
                      ],
                    ),
                    Gaps.h10,
                    Column(
                      children: [
                        SizedBox(
                          width: 88,
                          child: Image.asset("assets/images/beer.png"),
                        ),
                        const Text("회사단체"),
                      ],
                    ),
                    Gaps.h10,
                    Column(
                      children: [
                        SizedBox(
                          width: 88,
                          child: Image.asset("assets/images/life-jacket.png"),
                        ),
                        const Text("레프팅여행"),
                      ],
                    ),
                    Gaps.h10,
                    Column(
                      children: [
                        SizedBox(
                          width: 88,
                          child: Image.asset("assets/images/cart01.png"),
                        ),
                        const Text("수학여행"),
                      ],
                    ),
                  ],
                ),
              ),
              Gaps.v12,
              const Center(
                child: Text(
                  "여행 목적별 견적요청서 작성하기 >>",
                  style: TextStyle(fontSize: Sizes.size14),
                ),
              ),
              Gaps.v48,
              SizedBox(
                height: 115,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Column(
                      children: [
                        SizedBox(
                          width: 88,
                          child: Image.asset("assets/images/cart01.png"),
                        ),
                        const Text("일본여행"),
                      ],
                    ),
                    Gaps.h10,
                    Column(
                      children: [
                        SizedBox(
                          width: 88,
                          child: Image.asset("assets/images/chair.png"),
                        ),
                        const Text("유럽여행"),
                      ],
                    ),
                    Gaps.h10,
                    Column(
                      children: [
                        SizedBox(
                          width: 88,
                          child: Image.asset("assets/images/Fried-noodles.png"),
                        ),
                        const Text("동남아시아여행"),
                      ],
                    ),
                    Gaps.h10,
                    Column(
                      children: [
                        SizedBox(
                          width: 88,
                          child: Image.asset("assets/images/mountain-peak.png"),
                        ),
                        const Text("중국여행"),
                      ],
                    ),
                    Gaps.h10,
                    Column(
                      children: [
                        SizedBox(
                          width: 88,
                          child: Image.asset("assets/images/suitcase12.png"),
                        ),
                        const Text("미국여행"),
                      ],
                    ),
                    Gaps.h10,
                    Column(
                      children: [
                        SizedBox(
                          width: 88,
                          child: Image.asset("assets/images/watermelon 21.png"),
                        ),
                        const Text("호주여행"),
                      ],
                    ),
                  ],
                ),
              ),
              Gaps.v6,
              const Center(
                child: Text(
                  "여행지별 견적요청 >>",
                  style: TextStyle(fontSize: Sizes.size14),
                ),
              ),
              Gaps.v48,
              Container(
                child: Image.asset("assets/images/placeholder3.jpg"),
              ),
              Gaps.v48,
              const Text(
                "마감 임박 견적 요청서",
                textAlign: TextAlign.start,
              ),
              Gaps.v16,
              const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("•올 봄에 졸업 여행을 예정중입니다."),
                      Text(">>"),
                    ],
                  ),
                  Gaps.v6,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("•올 봄에 졸업 여행을 예정중입니다."),
                      Text(">>"),
                    ],
                  ),
                  Gaps.v6,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("•올 봄에 졸업 여행을 예정중입니다."),
                      Text(">>"),
                    ],
                  ),
                  Gaps.v6,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("•올 봄에 졸업 여행을 예정중입니다."),
                      Text(">>"),
                    ],
                  ),
                  Gaps.v6,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("•올 봄에 졸업 여행을 예정중입니다."),
                      Text(">>"),
                    ],
                  ),
                  Gaps.v6,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("•올 봄에 졸업 여행을 예정중입니다."),
                      Text(">>"),
                    ],
                  ),
                  Gaps.v6,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("•올 봄에 졸업 여행을 예정중입니다."),
                      Text(">>"),
                    ],
                  ),
                  Gaps.v6,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("•올 봄에 졸업 여행을 예정중입니다."),
                      Text(">>"),
                    ],
                  ),
                  Gaps.v6,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("•올 봄에 졸업 여행을 예정중입니다."),
                      Text(">>"),
                    ],
                  ),
                  Gaps.v6,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("•올 봄에 졸업 여행을 예정중입니다."),
                      Text(">>"),
                    ],
                  ),
                  Gaps.v6,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("•올 봄에 졸업 여행을 예정중입니다."),
                      Text(">>"),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
