import 'package:flutter/material.dart';

/// st 입력 후 Flutter Stateless Widget을 선택하여 enter하면
/// 손쉽게 기본 위젯을 작성하기 위한 코드가 만들어지지만
/// 우선 코드에 익숙해지기 위해 사용하지 않는다.

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const Button({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    /// Container() : HTML의 div와 동일
    return Container(
      /// 값을 입력받아 사용하기 때문에 더 이상 상수로서 사용할 수 없으므로
      /// const가 붙은 것을 모두 제거
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 45,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 22,
          color: textColor,
        ),
      ),
    );
  }
}
