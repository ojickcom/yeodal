import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/features/pages/foreigntrip_scree.dart';

class DomesticTrip extends StatefulWidget {
  const DomesticTrip({super.key});

  @override
  State<DomesticTrip> createState() => _SuggestionDemosticState();
}

void _onDestinySelected(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => const ForeignTrip(),
    ),
  );
}

class _SuggestionDemosticState extends State<DomesticTrip> {
  final List<String> citiesInKorea = [
    '제주',
    '울릉도',
    '서울',
    '인천',
    '부산',
    '대구',
    '강원도',
    '경상도',
    '전라도',
    '충청도'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("어디로 떠나세요?"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsetsDirectional.all(20),
          child: Column(
            children: [
              const Row(
                children: [
                  Text("목적지(국내):"),
                  CityDropdownMenuWidget(),
                ],
              ),
              const Row(
                children: [
                  Text("출발지:"),
                  CityDropdownMenuWidget(),
                ],
              ),
              const Row(
                children: [
                  Text("인원:"),
                  PeopleDropdownMenuWidget(),
                ],
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    onTap: () async {
                      final date = await showDateRangePicker(
                        context: context,
                        firstDate: DateTime(2023),
                        lastDate: DateTime(2030),
                        saveText: ("저장"),
                        fieldStartHintText: ("11"),
                      );
                    },
                    title: const Text("출발 날짜를 선택"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color.fromARGB(255, 247, 242, 242),
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Sizes.size1,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '스텝 1 작성 완료',
                style: TextStyle(
                  fontSize: Sizes.size16,
                ),
              ),
              Gaps.h5,
              GestureDetector(
                onTap: () => _onDestinySelected(context),
                child: Text(
                  '날짜선택 ->',
                  style: TextStyle(
                    fontSize: Sizes.size16,
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CityDropdownMenuWidget extends StatefulWidget {
  const CityDropdownMenuWidget({super.key});

  @override
  _DropdownMenuWidgetState createState() => _DropdownMenuWidgetState();
}

class _DropdownMenuWidgetState extends State<CityDropdownMenuWidget> {
  String selectedCity = '제주'; // 초기 선택값 설정

  final List<String> citiesInKorea = [
    '제주',
    '울릉도',
    '서울',
    '인천',
    '부산',
    '대구',
    '강원도',
    '경상도',
    '전라도',
    '충청도',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('선택된 도시: $selectedCity'), // 선택된 도시 표시

        // 드롭다운 메뉴 생성
        DropdownButton<String>(
          value: selectedCity, // 현재 선택된 값
          items: citiesInKorea.map((city) {
            return DropdownMenuItem<String>(
              value: city,
              child: Text(city),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedCity = newValue!; // 선택한 도시 업데이트
            });
          },
        ),
      ],
    );
  }
}

class PeopleDropdownMenuWidget extends StatefulWidget {
  const PeopleDropdownMenuWidget({super.key});

  @override
  _PeopleDropdownMenuWidgetState createState() =>
      _PeopleDropdownMenuWidgetState();
}

class _PeopleDropdownMenuWidgetState extends State<PeopleDropdownMenuWidget> {
  int selectedPersonCount = 1; // 초기 선택값 설정

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('선택된 인원: $selectedPersonCount 명'), // 선택된 인원 표시

        // 드롭다운 메뉴 생성
        DropdownButton<int>(
          value: selectedPersonCount, // 현재 선택된 값
          items: List.generate(10, (index) => index + 1).map((count) {
            return DropdownMenuItem<int>(
              value: count,
              child: Text('$count 명'),
            );
          }).toList()
            ..add(const DropdownMenuItem<int>(
              value: 11,
              child: Text('11명 이상'),
            )),
          onChanged: (int? newValue) {
            setState(() {
              selectedPersonCount = newValue!; // 선택한 인원 업데이트
            });
          },
        ),
      ],
    );
  }
}
