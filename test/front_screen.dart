import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/pages/doemstic_trip_scree.dart';

class FrontScreen extends StatelessWidget {
  const FrontScreen({super.key});

  void _onDomesticTravel(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const DomesticTrip(),
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
            Image.asset(
              'assets/images/log001.png',
              height: Sizes.size20,
            ),
            const Spacer(),
            const FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              size: Sizes.size20,
              color: Colors.black54,
            ),
            Gaps.h20,
            const FaIcon(
              FontAwesomeIcons.user,
              size: Sizes.size20,
              color: Colors.black87,
            ),
            Gaps.h20,
            Container(
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
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.size18),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  "견적요청",
                  style: TextStyle(
                    fontSize: Sizes.size16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gaps.h10,
                Text(
                  "Hot Spot",
                  style: TextStyle(
                    fontSize: Sizes.size16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gaps.h10,
                Text(
                  "단체여행",
                  style: TextStyle(
                    fontSize: Sizes.size16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Gaps.h10,
                Text(
                  "추천여달",
                  style: TextStyle(
                    fontSize: Sizes.size16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Gaps.v20,
            Image.asset('assets/images/placeholder3.jpg'),
            Gaps.v24,
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        _onDomesticTravel(context);
                      },
                      child: const Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: Sizes.size14),
                              child: FaIcon(
                                FontAwesomeIcons.truckPlane,
                                size: Sizes.size28,
                                color: Colors.black87,
                              ),
                            ),
                            Text("국내여행11")
                          ],
                        ),
                      ),
                    ),
                    const Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: Sizes.size14),
                            child: FaIcon(
                              FontAwesomeIcons.earthAsia,
                              size: Sizes.size36,
                              color: Colors.black87,
                            ),
                          ),
                          Text("해외여행")
                        ],
                      ),
                    ),
                    const Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: Sizes.size14),
                            child: FaIcon(
                              FontAwesomeIcons.peoplePulling,
                              size: Sizes.size28,
                              color: Colors.black87,
                            ),
                          ),
                          Text("가이드 검색")
                        ],
                      ),
                    ),
                    const Center(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: Sizes.size14),
                            child: FaIcon(
                              FontAwesomeIcons.vanShuttle,
                              size: Sizes.size28,
                              color: Colors.black87,
                            ),
                          ),
                          Text("버스 렌탈")
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Gaps.v44,
            ListTile(
              title: const Text(
                "신정민님! 이런 여행은 어떠세요?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Sizes.size18,
                ),
              ),
              subtitle: Text(
                "이번 시즌에 가 볼 만한 여행지를 모아봤어요~!",
                style: TextStyle(
                  fontSize: Sizes.size12,
                  color: Colors.grey.shade500,
                ),
              ),
            ),
            Gaps.v10,
            Expanded(
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Center(
                    child: Card(
                      child: SizedBox(
                        width: 160,
                        height: 700,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              'assets/images/yeodal015.jpg',
                              width: 200,
                              height: 120,
                              fit: BoxFit.fitHeight,
                            ),
                            const Text("베트남 여행 4박 6일",
                                style: TextStyle(
                                  fontSize: Sizes.size18,
                                  color: Colors.black87,
                                )),
                            const Row(
                              children: [
                                Icon(
                                  Icons.face,
                                  size: Sizes.size14,
                                  color: Colors.black87,
                                ),
                                Gaps.h3,
                                Text(
                                  "12,312명 견적요청",
                                  style: TextStyle(
                                    fontSize: Sizes.size12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Gaps.v44,
            Gaps.v24,
            ListTile(
              title: const Text(
                "국내 여행의 달인들을 만나보세요.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Sizes.size18,
                ),
              ),
              subtitle: Text(
                "즐거운 여행의 정점을 찍어봅시다.",
                style: TextStyle(
                  fontSize: Sizes.size12,
                  color: Colors.grey.shade500,
                ),
              ),
            ),
            Gaps.v10,
            Expanded(
              child: ListView(
                children: const [
                  Text("..."),
                ],
              ),
            ),
            const Column(
              children: [
                Text("단체 여행달인에게 물어 보세요~! 리스트 스타일"),
              ],
            ),
            const Column(
              children: [
                Text("남들이 모르는 행복 여행지 가로휠 스타일2"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
