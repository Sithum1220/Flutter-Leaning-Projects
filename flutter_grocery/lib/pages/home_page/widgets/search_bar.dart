import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Color(0xffD9D9D9).withValues(alpha: 0.50),
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: Color(0xff000000).withValues(alpha: 0.20),
          width: 2,
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.search,
              color: Color(0xff333333).withValues(alpha: 0.5),
            ),
          ),

          Expanded(
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                hint: Text(
                  "Search here...",
                  style: TextStyle(
                    color: Color(0xff3B3636).withValues(alpha: 0.47),
                    fontSize: 20,
                  ),
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
