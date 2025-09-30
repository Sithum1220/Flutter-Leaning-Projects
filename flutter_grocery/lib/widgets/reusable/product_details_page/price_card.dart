import 'package:flutter/material.dart';

class PriceCard extends StatelessWidget {
  final String item;
  final int number;
  final double size;
  const PriceCard({
    super.key,
    required this.item,
    required this.number,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xffFFE500),
              shape: BoxShape.circle,
            ),
            child: Center(child: Text("1", style: TextStyle(fontSize: 20))),
          ),
          const SizedBox(width: 15),
          SizedBox(
            width: 100,
            child: Text(
              item,
              style: TextStyle(
                color: Color(0xff3B3636).withValues(alpha: 0.75),
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(width: 40),
          Container(
            decoration: BoxDecoration(
              color: Color(0xffD9D9D9).withValues(alpha: 0.40),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    "${size}g",
                    style: TextStyle(
                      color: Color(0xff3B3636).withValues(alpha: 0.75),
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff3B3636)),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: Color(0xff3B3636).withValues(alpha: 0.7),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff3B3636)),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.remove,
                        color: Color(0xff3B3636).withValues(alpha: 0.7),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
