import 'package:flutter/material.dart';
import 'package:workout_planner/constants/colors.dart';

class CompletionCard extends StatefulWidget {
  final String imageURL;
  final String taskName;
  final void Function() markAsDone;
  const CompletionCard({
    super.key,
    required this.imageURL,
    required this.taskName,
    required this.markAsDone,
  });

  @override
  State<CompletionCard> createState() => _CompletionCardState();
}

class _CompletionCardState extends State<CompletionCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: kCardBgColor,
        boxShadow: [BoxShadow(color: Colors.black12, offset: Offset(0, 2))],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(widget.imageURL, width: 50, fit: BoxFit.cover),
                const SizedBox(width: 25),
                Text(
                  widget.taskName,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: widget.markAsDone,
              icon: Icon(Icons.done, size: 30, color: kMainColor),
            ),
          ],
        ),
      ),
    );
  }
}
