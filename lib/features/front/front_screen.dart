import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/authentication/sign_up_screen.dart';
import 'package:tiktok_clone/features/front/front_screen2.dart';
import 'package:tiktok_clone/features/onboading/interests_screen.dart';
import 'package:tiktok_clone/features/pages/doemstic_trip_scree.dart';
import 'package:tiktok_clone/features/pages/busrental_screen.dart';
import 'package:tiktok_clone/features/pages/domestic_list.dart';
import 'package:tiktok_clone/features/pages/foreigntrip_scree.dart';
import 'package:tiktok_clone/features/pages/guide_search_screen.dart';
import 'package:tiktok_clone/features/pages/inbound_trip_screen.dart';
import 'package:tiktok_clone/features/pages/recommand_tour_screen.dart';
import 'package:tiktok_clone/features/users/user_profile_screen.dart';

class FrontScreen extends StatelessWidget {
  const FrontScreen({super.key});

  void _onInboundTripTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const InboundTrip(),
      ),
    );
  }

  void _onDemesticTravle(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const DomestciList(),
      ),
    );
  }

  void _userProfileTab(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const UserProfileScreen(
          usernames: "정민",
        ),
      ),
    );
  }

  void _onSignUp(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SignUpScreen(),
      ),
    );
  }

  void _onBusRental(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const BusrentalScreen(),
      ),
    );
  }

  void _onForeignTrip(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ForeignTrip(),
      ),
    );
  }

  void _onGuideSearch(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const GuideSearch(),
      ),
    );
  }

  void _onAskSuggestion(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const DomesticTrip(),
      ),
    );
  }

  void _onfront_screen2(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const FrontScreen2(),
      ),
    );
  }

  void _onInterest(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const InterestsScreen(),
      ),
    );
  }

  void _onRecommandedTour(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const RecommandTour(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => _onfront_screen2(context),
              child: Image.asset(
                'assets/images/log001.png',
                height: Sizes.size20,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: MysearchDelegate(),
                );
              },
              icon: const FaIcon(
                FontAwesomeIcons.magnifyingGlass,
                size: Sizes.size20,
                color: Colors.black54,
              ),
            ),
            Gaps.h14,
            IconButton(
                onPressed: () => _userProfileTab(context),
                icon: const FaIcon(
                  FontAwesomeIcons.user,
                  size: Sizes.size20,
                  color: Colors.black87,
                )),
            Gaps.h16,
            GestureDetector(
              onTap: () => _onSignUp(context),
              child: Container(
                padding: const EdgeInsetsDirectional.symmetric(
                  vertical: Sizes.size6,
                  horizontal: Sizes.size6,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue.shade600,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      Sizes.size6,
                    ),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "달인등록",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.size18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(),
              Gaps.v32,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "여행의 달인들을 만나보세요",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Sizes.size18,
                    ),
                  ),
                  Text(
                    "즐거운 여행의 정점을 찍어봅시다. 리스트1.",
                    style: TextStyle(
                      fontSize: Sizes.size12,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
              Gaps.v10,
              Container(
                alignment: Alignment.centerLeft,
                height: 170,
                child: SizedBox(
                  height: 700,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      TravleCard001(
                        image: 'assets/images/yeodal005.jpg',
                        titletext: "국내 겨울 여행 코스 달인",
                        subtext: "12,312명 견적요청",
                      ),
                      Gaps.h8,
                      TravleCard001(
                        image: 'assets/images/yeodal010.jpg',
                        titletext: "겨울 동남아 여행 달인",
                        subtext: "12,312명 견적요청",
                      ),
                      Gaps.h8,
                      TravleCard001(
                        image: 'assets/images/yeodal014.jpg',
                        titletext: "유럽 단체 여행의 달인",
                        subtext: "2,231명 견적요청",
                      ),
                    ],
                  ),
                ),
              ),
              Gaps.v32,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "해외 축제와 볼거리가 뭐가 있을까요?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Sizes.size18,
                    ),
                  ),
                  Text(
                    "축제 정보와 후기를 확인. 주변 맛집, 숙박 정도 공유 리스트3.",
                    style: TextStyle(
                      fontSize: Sizes.size12,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
              Gaps.v10,
              Container(
                alignment: Alignment.centerLeft,
                height: 170,
                child: SizedBox(
                  height: 700,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      TravleCard002(
                        image: 'assets/images/yeodal034.jpg',
                        titletext: "베트남 다낭 축제",
                        subtext: "12,312명 견적요청",
                      ),
                      Gaps.h8,
                      TravleCard002(
                        image: 'assets/images/yeodal035.jpg',
                        titletext: "프랑스 와인 축제+스키 펜션",
                        subtext: "12,312명 견적요청",
                      ),
                      Gaps.h8,
                      TravleCard002(
                        image: 'assets/images/yeodal036.jpg',
                        titletext: "오사카 라면 축제",
                        subtext: "2,231명 견적요청",
                      ),
                    ],
                  ),
                ),
              ),
              Gaps.v32,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "해외 관광지 축제는 뭐가 있을까?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Sizes.size18,
                    ),
                  ),
                  Text(
                    "축제 정보와 후기를 확인. 주변 맛집, 숙박 정도 공유  list style 3",
                    style: TextStyle(
                      fontSize: Sizes.size12,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
              Gaps.v10,
              Container(
                alignment: Alignment.centerLeft,
                height: 170,
                child: SizedBox(
                  // 차후 가로 스크롤 넣을 자리.
                  height: 700,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      TravleCard003(
                        image: 'assets/images/yeodal032.jpg',
                        titletext: "베트남 여행 4박 6일",
                        subtext: "12,312명 견적요청",
                      ),
                      Gaps.h8,
                      TravleCard003(
                        image: 'assets/images/yeodal027.jpg',
                        titletext: "오사카 여행 3박 4일",
                        subtext: "12,312명 견적요청",
                      ),
                      Gaps.h8,
                      TravleCard003(
                        image: 'assets/images/yeodal028.jpg',
                        titletext: "유럽여행 9박",
                        subtext: "2,231명 견적요청",
                      ),
                    ],
                  ),
                ),
              ),
              Gaps.v32,
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector textUnderIcon(
    BuildContext context,
    IconData icon,
    String textdata,
    Function onTapdata,
  ) {
    return GestureDetector(
      onTap: () {
        onTapdata(context);
      },
      child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: Sizes.size14),
              child: FaIcon(
                icon,
                size: Sizes.size28,
                color: Colors.black87,
              ),
            ),
            Text(textdata)
          ],
        ),
      ),
    );
  }
}

class TravleCard001 extends StatelessWidget {
  final String image;
  final String titletext;
  final String subtext;
  const TravleCard001({
    super.key,
    required this.image,
    required this.titletext,
    required this.subtext,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 200,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            width: 160,
            height: 120,
            fit: BoxFit.cover,
          ),
          Text(
            titletext,
            style: const TextStyle(
              fontSize: Sizes.size16,
              color: Colors.black87,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Row(
            children: [
              const Icon(
                Icons.face,
                size: Sizes.size14,
                color: Colors.black87,
              ),
              Gaps.h3,
              Text(
                subtext,
                style: const TextStyle(
                  fontSize: Sizes.size12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TravleCard002 extends StatelessWidget {
  final String image;
  final String titletext;
  final String subtext;
  const TravleCard002({
    super.key,
    required this.image,
    required this.titletext,
    required this.subtext,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 200,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusDirectional.circular(10.0),
            child: Image.asset(
              image,
              width: 160,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            titletext,
            style: const TextStyle(
              fontSize: Sizes.size16,
              color: Colors.black87,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class TravleCard003 extends StatelessWidget {
  final String image;
  final String titletext;
  final String subtext;
  const TravleCard003({
    super.key,
    required this.image,
    required this.titletext,
    required this.subtext,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 200,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadiusDirectional.circular(10.0),
              child: Stack(
                children: [
                  Image.asset(
                    image,
                    width: 160,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.black.withOpacity(0.6),
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        titletext,
                        style: const TextStyle(
                          fontSize: Sizes.size16,
                          color: Colors.white,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class MysearchDelegate extends SearchDelegate {
  List<String> suggestions = [
    '경주',
    '제주도',
    '부산',
    '오사카 여행',
    '후쿠오카 여행',
    '베트남 여행',
    '호주 여행',
    '프랑스 여행',
    '자동 완성 리스트 차후 추가',
  ];

  // buildLeading 메서드는 뒤로 가기 아이콘을 렌더링합니다.
  @override
  Widget buildLeading(BuildContext context) => IconButton(
        onPressed: () => close(context, null),
        icon: const Icon(
          Icons.arrow_back,
        ),
      );

  // buildActions 메서드는 검색 텍스트를 지우는 클리어 아이콘을 렌더링합니다.
  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            if (query.isEmpty) {
              // 검색 쿼리가 비어있으면 검색 화면을 닫습니다.
              close(context, null);
            } else {
              // 검색 쿼리를 비우고 검색 결과를 갱신합니다.
              query = '';
              showSuggestions(context);
            }
          },
        )
      ];

  // buildResults 메서드는 검색 결과를 보여줍니다.
  @override
  Widget buildResults(BuildContext context) {
    // 검색 결과를 표시하는 방식을 여기에 구현하세요.
    return Center(
      child: Text(
        query,
        style: const TextStyle(
          fontSize: 64,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  // buildSuggestions 메서드는 검색 제안을 보여줍니다.
  @override
  Widget buildSuggestions(BuildContext context) {
    // 검색 제안 목록을 필터링하고 렌더링하는 방식을 여기에 구현하세요.
    List<String> filteredSuggestions = suggestions
        .where((suggestion) =>
            suggestion.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: filteredSuggestions.length,
      itemBuilder: (context, index) {
        final suggestion = filteredSuggestions[index];

        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
            showResults(context);
          },
        );
      },
    );
  }
}
