import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SelfTestScreen(),
    );
  }
}

class SelfTestScreen extends StatefulWidget {
  const SelfTestScreen({super.key});

  @override
  SelfTestScreenState createState() => SelfTestScreenState();
}

class SelfTestScreenState extends State<SelfTestScreen> {
  final List<Map<String, String?>> _questions = [
    {'question': '당신은 기억력에 문제가 있습니까?', 'answer': null},
    {'question': '당신은 기억력이 10년 전보다 저하되었습니까?', 'answer': null},
    {'question': '당신은 기억력이 동년의 다른 사람들에 비해\n나쁘다고 생각하십니까?', 'answer': null},
    {'question': '당신은 기억력 저하로 일상생활에 불편을 느끼십니까?', 'answer': null},
    {'question': '당신은 최근에 일어난 일을 기억하는 것이 어렵습니까?', 'answer': null},
    {'question': '당신은 며칠 전에 나눈 대화 내용을 기억하는 것이 어렵습니까?', 'answer': null},
    {'question': '당신은 며칠 전에 한 약속을 기억하기 어렵습니까?', 'answer': null},
    {'question': '당신은 친한 사람의 이름을 기억하기 어렵습니까?', 'answer': null},
    {'question': '당신은 물건 둔 곳을 기억하기 어렵습니까?', 'answer': null},
    {'question': '당신은 이전보다 물건을 자주 잃어버립니까?', 'answer': null},
    {'question': '당신은 집 근처에서 길을 잃은 적이 있습니까?', 'answer': null},
    {'question': '당신은 가게에서 사려고 하는 두세 가지 물건의 이름을\n기억하기 어렵습니까?', 'answer': null},
    {'question': '당신은 가스불이나 전깃불 끄는 것을 기억하기 어렵습니까?', 'answer': null},
    {'question': '당신은 자주 사용하는 전화번호(자신 혹은 자녀의 집)를\n기억하기 어렵습니까?', 'answer': null},
  ];

  int _currentQuestionIndex = 0;

  void _answerQuestion(String answer) {
    setState(() {
      _questions[_currentQuestionIndex]['answer'] = answer;
      _currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF9E2),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Text(
                  '치매 자가 진단 테스트',
                  style: TextStyle(
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFEE8F00),
                  ),
                  textAlign: TextAlign.center, // 텍스트 가운데 정렬
                ),
              ),
              const SizedBox(height: 50.0),
              // 질문 목록
              if (_currentQuestionIndex > 0)
                ..._questions.sublist(0, _currentQuestionIndex).map((q) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            q['question']!,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center, // 텍스트 가운데 정렬
                          ),
                          const SizedBox(height: 5.0),
                          Container(
                            width: 70,
                            padding: const EdgeInsets.symmetric(
                              vertical: 6.0,
                            ),
                            decoration: BoxDecoration(
                              color: q['answer'] != null
                                  ? const Color(0xFFFFCC16)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: q['answer'] != null
                                  ? [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 1,
                                        blurRadius: 5,
                                        offset: const Offset(0, 3),
                                      ),
                                    ]
                                  : null,
                            ),
                            alignment: Alignment.center, // 텍스트 가운데 정렬
                            child: Text(
                              q['answer'] ?? '답변 대기 중',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                color: q['answer'] != null
                                    ? Colors.white
                                    : Colors.black54,
                              ),
                              textAlign: TextAlign.center, // 텍스트 가운데 정렬
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20.0),
                    ],
                  );
                }),
              // 현재 질문
              if (_currentQuestionIndex < _questions.length)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      _questions[_currentQuestionIndex]['question']!,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center, // 텍스트 가운데 정렬
                    ),
                    const SizedBox(height: 5.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () => _answerQuestion('예'),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8.0,
                              horizontal: 28.0,
                            ),
                            backgroundColor: const Color(0xFFFFCC16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            shadowColor: Colors.black,
                            elevation: 5.0,
                          ),
                          child: const Text(
                            '예',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        ElevatedButton(
                          onPressed: () => _answerQuestion('아니요'),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8.0,
                              horizontal: 15.0,
                            ),
                            backgroundColor: const Color(0xFFFFCC16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            shadowColor: Colors.black,
                            elevation: 5.0,
                          ),
                          child: const Text(
                            '아니요',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              const SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }
}
