import 'package:flutter/material.dart';
import 'self_test.dart'; // self_test.dart
import 'package:flutter_svg/flutter_svg.dart';

class NameSetScreen extends StatelessWidget {
  const NameSetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // 배경색 투명 설정
      ),
      backgroundColor: const Color(0xFFFFFCF3), // 배경색 설정
      body: Padding(
        padding: const EdgeInsets.all(40.0), // 상하좌우 40의 여백
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '당신의 말벗에게\n이름을 지어주세요',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.black, // 텍스트 색상 설정
              ),
              textAlign: TextAlign.center, // 텍스트를 가운데 정렬
            ),
            const SizedBox(height: 20.0), // 텍스트와 TextField 사이의 간격
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFF1F1F1), // 배경색 설정
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0), // 둥근 모서리 설정
                  borderSide: const BorderSide(
                    color: Color(0xFFEE8F00), // 기본 테두리 색상 설정
                    width: 2.0, // 기본 테두리 굵기 설정
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0), // 둥근 모서리 설정
                  borderSide: const BorderSide(
                    color: Color(0xFFEE8F00), // 활성화된 상태의 테두리 색상
                    width: 2.0, // 활성화된 상태의 테두리 굵기 설정
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0), // 둥근 모서리 설정
                  borderSide: const BorderSide(
                    color: Color(0xFFEE8F00), // 포커스된 상태의 테두리 색상
                    width: 2.0, // 포커스된 상태의 테두리 굵기 설정
                  ),
                ),
                hintText: '장수말벗',
                hintStyle: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold, // 볼드체 설정
                  color: Color(0xFFCCCCCC), // 힌트 텍스트 색상 설정
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 35.0, // 수직 여백
                  horizontal: 35.0, // 수평 여백
                ),
              ),
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold, // 볼드체 설정
                color: Color(0xFFEE8F00), // 입력 텍스트 색상 설정
              ),
              textAlign: TextAlign.center, // 텍스트 가운데 정렬
            ),
            const SizedBox(height: 20.0), // TextField와 밑의 텍스트 사이의 간격
            const Text(
              '생략 시 장수말벗으로 자동 저장되며,\n추후 설정에서 변경 가능합니다',
              style: TextStyle(
                fontSize: 20.0,
                color: Color(0xFFCFCFCF), // 텍스트 색상 설정
              ),
              textAlign: TextAlign.center, // 텍스트를 가운데 정렬
            ),
            const SizedBox(height: 70.0), // 텍스트와 버튼 사이의 간격
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SelfTestScreen()),
                );
              },
              child: SvgPicture.asset(
                'assets/icons/voice.svg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
