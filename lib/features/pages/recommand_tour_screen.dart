import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/sizes.dart';

class RecommandTour extends StatelessWidget {
  const RecommandTour({super.key});

  @override
  Widget build(BuildContext context) {
    const bool pinned = true;
    const bool snap = true;
    const bool floating = true;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: pinned,
            snap: snap,
            floating: floating,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "올 겨울 추천하는 여행지",
                style: TextStyle(color: Colors.black54),
              ),
              background: FlutterLogo(),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
              child: Center(
                child: Text("행복한 여행을 위해 잠시 떠나자."),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 210.0,
                  child: Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "제목",
                          style: TextStyle(
                            fontSize: Sizes.size18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image.asset(
                          "assets/images/yeodal004.jpg",
                          width: double.infinity,
                          //                           infinity,maxFinite,negativeInfinity,minPositive,tryParse?
                          height: 150,
                          // fit: BoxFit.fill,
                        ),
                        const Text(
                          "서브 타이틀",
                          style: TextStyle(
                            fontSize: Sizes.size12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class ImageTextContainer extends StatelessWidget {
  final String imagePath;
  final String text;

  const ImageTextContainer({
    super.key,
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, // 원하는 너비 설정
      height: 200, // 원하는 높이 설정
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover, // 이미지를 컨테이너에 맞게 조절
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white, // 텍스트 색상 설정
            fontSize: 16, // 텍스트 크기 설정
          ),
        ),
      ),
    );
  }
}
