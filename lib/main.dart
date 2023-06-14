import 'package:flutter/material.dart';
import './widgets/button.dart';
import './widgets/currency-card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        /*
        Colors와 Color의 차이
        s가 붙지 않은 것은 #000000과 같은 색상표를 통한 표시가 필요할 때 사용
        #의 경우 16진수로 작성할 것 -> 0xFF
        */
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          //자동 스크롤
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  //사이즈가 있는 box 생성
                  height: 80,
                ),
                /*
                요소를 위아래로 위치시키고 싶으면 Row()
                요소를 양옆으로 위치시키고 싶으면 Column()
                */
                Row(
                  mainAxisAlignment: MainAxisAlignment.end, //행 수평 정렬
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end, //열 수직 정렬
                      children: [
                        const Text(
                          'Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 18,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  '\$5 194 482',
                  style: TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: 'Transfer',
                      bgColor: Color(0xFFFFC107),
                      textColor: Colors.black,
                    ),
                    Button(
                      text: 'Request',
                      bgColor: Color(0xff1f2123),
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  /// column에서의 main축(세로)과 cross축(가로),
                  /// row에서의 main축(가로)과 cross축(세로) 헷갈리지 않게 주의
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6 428',
                  icon: Icons.euro_outlined,
                  isInverted: false,
                  offsetNum: 0,
                ),
                const CurrencyCard(
                  name: 'Bitcoin',
                  code: 'BTC',
                  amount: '9 785',
                  icon: Icons.currency_bitcoin_outlined,
                  isInverted: true,
                  offsetNum: 1,
                ),
                const CurrencyCard(
                  name: 'Rupee',
                  code: 'INR',
                  amount: '28 981',
                  icon: Icons.currency_rupee_outlined,
                  isInverted: false,
                  offsetNum: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
