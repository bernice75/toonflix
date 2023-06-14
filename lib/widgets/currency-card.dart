import 'package:flutter/material.dart';

class CurrencyCard extends StatefulWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final double offsetNum;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.offsetNum,
  });

  @override
  State<CurrencyCard> createState() => _CurrencyCardState();
}

class _CurrencyCardState extends State<CurrencyCard> {
  /// 변수명 앞에 _를 붙임으로써 private의 역할을 하도록 함
  final _blackColor = const Color(0xFF1F2123);

  final int _offset = -20;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, _offset * widget.offsetNum),
      child: Material(
        /// 아이콘 크기가 넘칠 경우 어떻게 할지 결정
        clipBehavior: Clip.hardEdge,
        color: widget.isInverted ? Colors.white : _blackColor,
        shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                      color: widget.isInverted ? _blackColor : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        widget.amount,
                        style: TextStyle(
                          color: widget.isInverted ? _blackColor : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        widget.code,
                        style: TextStyle(
                          color: widget.isInverted
                              ? _blackColor.withOpacity(0.8)
                              : Colors.white.withOpacity(0.8),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                /// 아이콘 크기 키움
                scale: 2.2,
                child: Transform.translate(
                  /// 아이콘 위치 이동
                  offset: const Offset(-10, 18),
                  child: Icon(
                    widget.icon,
                    color: widget.isInverted ? _blackColor : Colors.white,
                    size: 88,
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
