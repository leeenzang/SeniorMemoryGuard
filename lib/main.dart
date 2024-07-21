import 'package:flutter/material.dart';
import 'name_set.dart'; // name_set.dart 파일 import
import 'dart:async'; // Timer를 사용하기 위해 import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WASP',
      theme: ThemeData(
        primaryColor: const Color(0xFFFFCC16),
        scaffoldBackgroundColor: Colors.white, // 기본 배경색을 흰색으로 설정
      ),
      home: const SplashScreen(), // SplashScreen을 home으로 설정
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // 3초 후에 홈 화면으로 이동
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFFFCC16), // 스플래시 화면 배경색
      body: Center(
        child: Text(
          '장수말벗',
          style: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: Colors.white, // 텍스트 색상
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30.0), // 양쪽에 30의 마진
          child: AppBar(
            backgroundColor: Colors.transparent, // 배경색 투명 설정
            title: const Text(
              '홈',
              style: TextStyle(
                color: Color(0xFFFFCC16), // 홈 이름 색상 설정
                fontSize: 36.0, // 홈 이름 글씨 크기 설정
                fontWeight: FontWeight.bold, // 볼드체 설정
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.settings),
                color: const Color(0xFFFFCC16), // 아이콘 색상 설정
                iconSize: 40.0, // 아이콘 크기 설정
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          const NameSetScreen(), // NameSetScreen으로 이동
                    ),
                  );
                },
              ),
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(4.0), // 밑줄의 높이
              child: Align(
                alignment: Alignment.centerLeft, // 왼쪽 정렬
                child: Container(
                  color: const Color(0xFFFFCC16), // 밑줄의 색상 설정
                  height: 4.0, // 밑줄의 높이
                  width: 68.0,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0), // 상하좌우 40의 여백
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // 왼쪽 정렬
          children: [
            const Text(
              '오늘은 무슨 일이 있었나요?',
              style: TextStyle(
                fontSize: 20.0, // 글씨 크기
                fontWeight: FontWeight.bold, // 글씨 두께
                color: Colors.black, // 글씨 색상
              ),
              textAlign: TextAlign.left, // 텍스트 왼쪽 정렬
            ),
            const SizedBox(height: 10.0), // 텍스트와 다음 위젯 사이의 간격
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFFFF9E2), // 배경색 설정
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0), // 둥근 모서리 설정
                  borderSide: BorderSide.none, // 테두리 제거
                ),
                hintText: '여기에 내용을 입력하세요',
                hintStyle: const TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold, // 볼드체 설정
                  color: Color(0xFFEE8F00), // 힌트 텍스트 색상 설정
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 35.0, // 수직 여백
                  horizontal: 35.0, // 수평 여백
                ),
              ),
              style: const TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold, // 볼드체 설정
                color: Color(0xFFEE8F00), // 입력 텍스트 색상 설정
              ),
              textAlign: TextAlign.center, // 텍스트 가운데 정렬
              maxLines: null, // 여러 줄 입력 가능
            ),
            const SizedBox(height: 50.0), // 텍스트와 다음 위젯 사이의 간격
            const Text(
              '이번 주에 어떤 일들이 있었나요?',
              style: TextStyle(
                fontSize: 20.0, // 글씨 크기
                fontWeight: FontWeight.bold, // 글씨 두께
                color: Colors.black, // 글씨 색상
              ),
              textAlign: TextAlign.left, // 텍스트 왼쪽 정렬
            ),
            const SizedBox(height: 10.0), // 텍스트와 다음 위젯 사이의 간격
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFFFF9E2), // 배경색 설정
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0), // 둥근 모서리 설정
                  borderSide: BorderSide.none, // 테두리 제거
                ),
                hintText: '여기에 내용을 입력하세요',
                hintStyle: const TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold, // 볼드체 설정
                  color: Color(0xFFEE8F00), // 힌트 텍스트 색상 설정
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 35.0, // 수직 여백
                  horizontal: 35.0, // 수평 여백
                ),
              ),
              style: const TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold, // 볼드체 설정
                color: Color(0xFFEE8F00), // 입력 텍스트 색상 설정
              ),
              textAlign: TextAlign.center, // 텍스트 가운데 정렬
              maxLines: null, // 여러 줄 입력 가능
            ),
            const SizedBox(height: 50.0), // 텍스트와 다음 위젯 사이의 간격
            const Text(
              '과거에는 어떤 일이 있었나요?',
              style: TextStyle(
                fontSize: 20.0, // 글씨 크기
                fontWeight: FontWeight.bold, // 글씨 두께
                color: Colors.black, // 글씨 색상
              ),
              textAlign: TextAlign.left, // 텍스트 왼쪽 정렬
            ),
            const SizedBox(height: 10.0), // 텍스트와 다음 위젯 사이의 간격
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xFFFFF9E2), // 배경색 설정
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0), // 둥근 모서리 설정
                  borderSide: BorderSide.none, // 테두리 제거
                ),
                hintText: '여기에 내용을 입력하세요',
                hintStyle: const TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold, // 볼드체 설정
                  color: Color(0xFFEE8F00), // 힌트 텍스트 색상 설정
                ),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 35.0, // 수직 여백
                  horizontal: 35.0, // 수평 여백
                ),
              ),
              style: const TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold, // 볼드체 설정
                color: Color(0xFFEE8F00), // 입력 텍스트 색상 설정
              ),
              textAlign: TextAlign.center, // 텍스트 가운데 정렬
              maxLines: null, // 여러 줄 입력 가능
            ),
          ],
        ),
      ),
    );
  }
}
